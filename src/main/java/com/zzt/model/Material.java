package com.zzt.model;

import java.util.Date;

public class Material {
    //物料编码
    private Integer matCode;
    //物料名称
    private String mName;
    //助记码
    private long mnemonicCode;
    //物料类型编码
    private long typeCode;
    //物料类型
    private String type;
    //规格型号
    private String specifications;
    //生产厂家
    private String manufacturer;
    //单价
    private long price;
    //（计量）单位
    private String unitsOfMeasurement;
    //物料库存数
    private Integer totalAmount;

    public long getMatCode() {
        return matCode;
    }

    public void setMatCode(Integer matCode) {
        this.matCode = matCode;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public long getMnemonicCode() {
        return mnemonicCode;
    }

    public void setMnemonicCode(long mnemonicCode) {
        this.mnemonicCode = mnemonicCode;
    }

    public long getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(long typeCode) {
        this.typeCode = typeCode;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSpecifications() {
        return specifications;
    }

    public void setSpecifications(String specifications) {
        this.specifications = specifications;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getUnitsOfMeasurement() {
        return unitsOfMeasurement;
    }

    public void setUnitsOfMeasurement(String unitsOfMeasurement) {
        this.unitsOfMeasurement = unitsOfMeasurement;
    }

    public Integer getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(Integer totalAmount) {
        this.totalAmount = totalAmount;
    }

    @Override
    public String toString() {
        return "Material{" +
                "matCode=" + matCode +
                ", mName='" + mName + '\'' +
                ", mnemonicCode=" + mnemonicCode +
                ", typeCode=" + typeCode +
                ", type='" + type + '\'' +
                ", specifications='" + specifications + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", price=" + price +
                ", unitsOfMeasurement='" + unitsOfMeasurement + '\'' +
                ", totalAmount=" + totalAmount +
                '}';
    }
}
