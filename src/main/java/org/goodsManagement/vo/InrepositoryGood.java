package org.goodsManagement.vo;

import java.util.Date;

/**
 * Created by lifei on 2015/9/22.
 */
public class InrepositoryGood {
//    select goods.goodname,goods.goodunit,goods.goodtype,inrepository.goodnumber from
//    goods,inrepository  where goods.id = inrepository.goodid;
    private String goodname;
    private String goodunit;
    private Integer goodnumbers;
    private String goodtype;

    public String getGoodname() {
        return goodname;
    }

    public void setGoodname(String goodname) {
        this.goodname = goodname;
    }

    public String getGoodunit() {
        return goodunit;
    }

    public void setGoodunit(String goodunit) {
        this.goodunit = goodunit;
    }

    public Integer getGoodnumbers() {
        return goodnumbers;
    }

    public void setGoodnumbers(Integer goodnumbers) {
        this.goodnumbers = goodnumbers;
    }

    public String getGoodtype() {
        return goodtype;
    }

    public void setGoodtype(String goodtype) {
        this.goodtype = goodtype;
    }
}
