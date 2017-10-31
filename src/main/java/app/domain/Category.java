package app.domain;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: Abbot
 * Date: 2017-10-30
 * Time: 16:54
 * Description:
 */
public class Category implements Serializable
{

    private static final long serialVersionUID = -7383041007281944325L;

    private int id;
    private String name;

    public Category()
    {
    }

    public Category(int id, String name)
    {
        this.id = id;
        this.name = name;
    }


    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

}
