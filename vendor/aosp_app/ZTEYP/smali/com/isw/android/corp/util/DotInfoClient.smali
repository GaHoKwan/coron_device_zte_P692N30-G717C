.class public Lcom/isw/android/corp/util/DotInfoClient;
.super Ljava/lang/Object;
.source "DotInfoClient.java"


# static fields
.field private static final COMPANY_INFO_BY_SEARCH:Ljava/lang/String; = "content://com.isw.android.corp.util.DotInfoProvider/companyInfoBySearch"

.field private static final TAG:Ljava/lang/String; = "DotInfoClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryCompanyByNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "cr"
    .parameter "keyWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v8, 0x0

    .line 133
    .local v8, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    const/4 v6, 0x0

    .line 134
    .local v6, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    const/4 v10, 0x0

    .line 135
    .local v10, cursor:Landroid/database/Cursor;
    const-string v0, "content://com.isw.android.corp.util.DotInfoProvider/companyInfoBySearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "DotInfoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "from provider! uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 139
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v8           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .local v9, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    const/4 v12, 0x0

    .local v12, i:I
    move-object v7, v6

    .end local v6           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .local v7, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lt v12, v0, :cond_2

    move-object v6, v7

    .end local v7           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    move-object v8, v9

    .line 153
    .end local v9           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v12           #i:I
    .restart local v8       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    :cond_0
    if-eqz v10, :cond_1

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_1
    :goto_1
    return-object v8

    .line 142
    .end local v6           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v8           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v7       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v9       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v12       #i:I
    :cond_2
    :try_start_2
    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 143
    new-instance v6, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v6}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .end local v7           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 146
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 147
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 141
    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    .end local v6           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v7       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_0

    .line 150
    .end local v7           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v9           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v12           #i:I
    .restart local v6       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v8       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    :catch_0
    move-exception v11

    .line 151
    .local v11, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    if-eqz v10, :cond_1

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 152
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 153
    :goto_3
    if-eqz v10, :cond_3

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_3
    throw v0

    .line 152
    .end local v6           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v8           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v7       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v9       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v12       #i:I
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    move-object v8, v9

    .end local v9           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v8       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    goto :goto_3

    .end local v8           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v9       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v8       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    goto :goto_3

    .line 150
    .end local v6           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v8           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v7       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v9       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    :catch_1
    move-exception v11

    move-object v6, v7

    .end local v7           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    move-object v8, v9

    .end local v9           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v8       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    goto :goto_2

    .end local v8           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v9       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    :catch_2
    move-exception v11

    move-object v8, v9

    .end local v9           #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v8       #companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    goto :goto_2
.end method

.method public static queryContactInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/ContactInfoBean;
    .locals 10
    .parameter "contentResolver"

    .prologue
    .line 19
    new-instance v6, Lcom/isw/android/corp/bean/ContactInfoBean;

    invoke-direct {v6}, Lcom/isw/android/corp/bean/ContactInfoBean;-><init>()V

    .line 21
    .local v6, bean:Lcom/isw/android/corp/bean/ContactInfoBean;
    const/4 v7, 0x0

    .line 23
    .local v7, cur:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "CONTACTURL"

    aput-object v3, v2, v0

    .line 25
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/isw/android/corp/bean/ContactInfoBean;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "contact"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 29
    if-eqz v7, :cond_2

    .line 30
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "CONTACTURL"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 31
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/ContactInfoBean;->contactUrl:Ljava/lang/String;

    .line 34
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contactUrl: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/isw/android/corp/bean/ContactInfoBean;->contactUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 48
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 59
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v6

    .line 38
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v0, "DotInfoClient"

    const-string v3, "Warning, queryContactInfo cur is null!"

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 40
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 41
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    if-eqz v7, :cond_1

    .line 48
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 52
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 53
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 43
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 44
    .local v8, err:Ljava/lang/Error;
    :try_start_5
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    if-eqz v7, :cond_1

    .line 48
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 55
    .end local v8           #err:Ljava/lang/Error;
    :catch_3
    move-exception v8

    .line 56
    .restart local v8       #err:Ljava/lang/Error;
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_1

    .line 46
    .end local v8           #err:Ljava/lang/Error;
    :catchall_0
    move-exception v0

    .line 47
    if-eqz v7, :cond_3

    .line 48
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_3
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3
.end method

.method public static queryDotUrlInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/DotInfoBean;
    .locals 10
    .parameter "cr"

    .prologue
    .line 166
    const/4 v7, 0x0

    .line 167
    .local v7, dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    sget-object v0, Lcom/isw/android/corp/bean/DotInfoBean;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "dotUrlInfo"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    .local v1, resultUri:Landroid/net/Uri;
    const-string v0, "DotInfoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dot url info provider! uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v6, 0x0

    .line 171
    .local v6, cur:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v8, Lcom/isw/android/corp/bean/DotInfoBean;

    invoke-direct {v8}, Lcom/isw/android/corp/bean/DotInfoBean;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v7           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .local v8, dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    :try_start_1
    const-string v0, "IMSI"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->imsi:Ljava/lang/String;

    .line 175
    const-string v0, "IMEI"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->imei:Ljava/lang/String;

    .line 176
    const-string v0, "ADCCOMPANY"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->adccompany:Ljava/lang/String;

    .line 177
    const-string v0, "MODEL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->model:Ljava/lang/String;

    .line 178
    const-string v0, "AN"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->an:Ljava/lang/String;

    .line 179
    const-string v0, "AV"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->av:Ljava/lang/String;

    .line 180
    const-string v0, "DOTMATCH"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->dotmatch:Ljava/lang/String;

    .line 181
    const-string v0, "DOTCOMMURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->dotCommUrl:Ljava/lang/String;

    .line 182
    const-string v0, "DOTMEDIAURL"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->dotMediaUrl:Ljava/lang/String;

    .line 183
    const-string v0, "WINKS"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->winks:Ljava/lang/String;

    .line 184
    const-string v0, "UPDATEPKGPERIOD"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/isw/android/corp/bean/DotInfoBean;->updatePkgPeriod:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 189
    .end local v8           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v7       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    :cond_0
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    .line 194
    :cond_1
    :goto_0
    return-object v7

    .line 186
    :catch_0
    move-exception v9

    .line 187
    .local v9, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    goto :goto_0

    .line 188
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 189
    :goto_2
    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    const/4 v6, 0x0

    .line 193
    :cond_2
    throw v0

    .line 188
    .end local v7           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v8       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v7       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    goto :goto_2

    .line 186
    .end local v7           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v8       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v7       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    goto :goto_1
.end method

.method public static queryPhoneDotInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/isw/android/corp/bean/DotInfoBean;
    .locals 10
    .parameter "contentResolver"
    .parameter "phone"

    .prologue
    .line 65
    new-instance v6, Lcom/isw/android/corp/bean/DotInfoBean;

    invoke-direct {v6}, Lcom/isw/android/corp/bean/DotInfoBean;-><init>()V

    .line 66
    .local v6, bean:Lcom/isw/android/corp/bean/DotInfoBean;
    const/4 v7, 0x0

    .line 68
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "DotInfoClient"

    const-string v3, "query Phone DotInfo..."

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v0, 0xf

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    const-string v3, "PHONE"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "NAME"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "INFO"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "DOTID"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 71
    const-string v3, "DOTIMG"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "DOTICONURL"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "DOTMATCH"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 72
    const-string v3, "DOTCOMMURL"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    const-string v3, "DOTMEDIAURL"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    const-string v3, "COMPANYID"

    aput-object v3, v2, v0

    const/16 v0, 0xa

    .line 73
    const-string v3, "COMPANYIMG"

    aput-object v3, v2, v0

    const/16 v0, 0xb

    const-string v3, "dottips"

    aput-object v3, v2, v0

    const/16 v0, 0xc

    const-string v3, "dotmodel"

    aput-object v3, v2, v0

    const/16 v0, 0xd

    .line 74
    const-string v3, "callcenternumber"

    aput-object v3, v2, v0

    const/16 v0, 0xe

    const-string v3, "callcentertips"

    aput-object v3, v2, v0

    .line 77
    .local v2, columns:[Ljava/lang/String;
    sget-object v1, Lcom/isw/android/corp/bean/DotInfoBean;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 81
    if-eqz v7, :cond_2

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "PHONE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->phone:Ljava/lang/String;

    .line 84
    const-string v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    .line 85
    const-string v0, "INFO"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->info:Ljava/lang/String;

    .line 87
    const-string v0, "DOTID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotid:Ljava/lang/String;

    .line 88
    const-string v0, "DOTIMG"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotimg:Ljava/lang/String;

    .line 89
    const-string v0, "COMPANYID"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->companyid:Ljava/lang/String;

    .line 90
    const-string v0, "COMPANYIMG"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    .line 92
    const-string v0, "DOTICONURL"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotIconUrl:Ljava/lang/String;

    .line 93
    const-string v0, "DOTMATCH"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotmatch:Ljava/lang/String;

    .line 94
    const-string v0, "DOTCOMMURL"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotCommUrl:Ljava/lang/String;

    .line 95
    const-string v0, "DOTMEDIAURL"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotMediaUrl:Ljava/lang/String;

    .line 96
    const-string v0, "dottips"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dottips:Ljava/lang/String;

    .line 97
    const-string v0, "dotmodel"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotModel:Ljava/lang/String;

    .line 99
    const-string v0, "callcenternumber"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 98
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->callcenternumber:Ljava/lang/String;

    .line 101
    const-string v0, "callcentertips"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 100
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isw/android/corp/bean/DotInfoBean;->callcentertips:Ljava/lang/String;

    .line 103
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[queryPhoneDotInfo]phone: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dotid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    const-string v4, ", companyid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->companyid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dotIconUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotIconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    const-string v4, ", dotmatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotmatch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dotCommUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotCommUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    const-string v4, ", dotMediaUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotMediaUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dottips: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dottips:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    const-string v4, ", dotModel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->dotModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callcenternumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->callcenternumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callcentertips: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    iget-object v4, v6, Lcom/isw/android/corp/bean/DotInfoBean;->callcentertips:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    if-eqz v7, :cond_0

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v6

    .line 112
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "DotInfoClient"

    const-string v3, "cur moveToFirst is null."

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 117
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 118
    .local v9, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    if-eqz v7, :cond_0

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 115
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v0, "DotInfoClient"

    const-string v3, "Warning, queryPhoneInfo cur is null!"

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 120
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 121
    .local v8, err:Ljava/lang/Error;
    :try_start_4
    const-string v0, "DotInfoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    if-eqz v7, :cond_0

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 123
    .end local v8           #err:Ljava/lang/Error;
    :catchall_0
    move-exception v0

    .line 124
    if-eqz v7, :cond_3

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_3
    throw v0
.end method
