package io.vertx.lang.ruby;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/**
 * A map that wrap/unwrap the entries of a delegate map. The function are provided by Ruby under the form
 * of Proc that takes care of the conversion.
 *
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
class AdaptingMap extends AbstractMap {

  final Map delegate;
  final Function toRuby;
  final Function toJava;

  AdaptingMap(Map delegate, Function toRuby, Function toJava) {
    this.delegate = delegate;
    this.toRuby = toRuby;
    this.toJava = toJava;
  }

  @Override
  public Object put(Object key, Object value) {
    return delegate.put(key, toJava.apply(value));
  }

  @Override
  public Object get(Object key) {
    return toRuby.apply(delegate.get(key));
  }

  @Override
  public Object remove(Object key) {
    return toRuby.apply(delegate.remove(key));
  }

  @Override
  public void clear() {
    delegate.clear();
  }

  final Set<Entry> entrySet = new AbstractSet<Entry>() {
    @Override
    public Iterator<Entry> iterator() {
      Iterator<? extends Entry<String, ?>> it = AdaptingMap.this.delegate.entrySet().iterator();
      return new Iterator<Entry>() {
        @Override
        public boolean hasNext() {
          return it.hasNext();
        }
        @Override
        public Entry next() {
          Entry entry = it.next();
          return new Entry() {
            @Override
            public Object getKey() {
              return entry.getKey();
            }
            @Override
            public Object getValue() {
              return toRuby.apply(entry.getValue());
            }
            @Override
            public Object setValue(Object value) {
              return toRuby.apply(entry.setValue(toJava.apply(value)));
            }
          };
        }
      };
    }

    @Override
    public int size() {
      return delegate.size();
    }
  };

  @Override
  public Set<Entry> entrySet() {
    return entrySet;
  }
}
