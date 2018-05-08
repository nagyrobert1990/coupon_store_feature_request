package com.codecool.web.dao;

import com.codecool.web.model.Coupon;

import java.sql.SQLException;
import java.util.List;

public interface CouponDao {

    List<Coupon> findAll(int userId) throws SQLException;

    List<Coupon> findAll(int userId, int shopId) throws SQLException;

    Coupon findById(int id) throws SQLException;

    Coupon add(String name, int percentage, int userID) throws SQLException;

    void add(int couponId, int... shopIds) throws SQLException;
}
