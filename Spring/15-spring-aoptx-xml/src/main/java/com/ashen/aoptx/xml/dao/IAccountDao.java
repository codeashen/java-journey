package com.ashen.aoptx.xml.dao;

import com.ashen.aoptx.xml.domain.Account;

/**
 * 账户持久层接口
 */
public interface IAccountDao {

    /**
     * 根据账户id查询账户
     * @param id
     * @return
     */
    Account findAccountById(Integer id);

    /**
     * 更新账户
     * @param account
     */
    void updateAccount(Account account);
}
