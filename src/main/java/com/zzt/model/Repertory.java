package com.zzt.model;
//库存类
public class Repertory {
    private Integer mwid;
    private Integer wNumber;
    private Warehouse warehouse;
    private Integer matCode;
    private Material material;
    private Integer amount;

    public Integer getMwid() {
        return mwid;
    }

    public void setMwid(Integer mwid) {
        this.mwid = mwid;
    }

    public Integer getwNumber() {
        return wNumber;
    }

    public void setwNumber(Integer wNumber) {
        this.wNumber = wNumber;
    }

    public Integer getMatCode() {
        return matCode;
    }

    public void setMatCode(Integer matCode) {
        this.matCode = matCode;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public Warehouse getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(Warehouse warehouse) {
        this.warehouse = warehouse;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Repertory{" +
                "mwid=" + mwid +
                ", wNumber=" + wNumber +
                ", warehouse=" + warehouse.toString() +
                ", matCode=" + matCode +
                ", material=" + material.toString() +
                ", amount=" + amount +
                '}';
    }
}
