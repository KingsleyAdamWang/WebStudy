package bean;

import contant.State;

import java.io.Serializable;

/**
 * Created by mengf on 2017/3/2 0002.
 */
public class Message implements Serializable{
    private State state;
    private Object obj;

    public Message(){

    }

    public Message(State state, Object obj) {
        this.state = state;
        this.obj = obj;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    @Override
    public String toString() {
        return "Message{" +
                "state=" + state +
                ", obj=" + obj.toString() +
                '}';
    }
}
