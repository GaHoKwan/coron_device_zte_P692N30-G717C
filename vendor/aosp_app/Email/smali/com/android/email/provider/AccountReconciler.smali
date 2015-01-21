.class public Lcom/android/email/provider/AccountReconciler;
.super Ljava/lang/Object;
.source "AccountReconciler.java"


# static fields
.field static final ACCOUNT_MANAGER_ACCOUNT_TEST_PREFIX:Ljava/lang/String; = " _"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accountsNeedReconciling(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;)Z
    .locals 1
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p0, v0}, Lcom/android/email/provider/AccountReconciler;->reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "providerContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/email/provider/AccountReconciler;->reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;Z)Z

    .line 84
    return-void
.end method

.method private static reconcileAccountsInternal(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;Z)Z
    .locals 20
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "providerContext"
    .parameter "performReconciliation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Landroid/content/Context;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/Account;>;"
    sget-boolean v17, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-eqz v17, :cond_1

    .line 99
    const-string v17, "Not do reconcileAccountsInternal when runing testcase"

    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 100
    const/4 v14, 0x1

    .line 173
    :cond_0
    return v14

    .line 103
    :cond_1
    const/4 v14, 0x0

    .line 107
    .local v14, needsReconciling:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/provider/Account;

    .line 108
    .local v15, providerAccount:Lcom/android/emailcommon/provider/Account;
    iget-object v0, v15, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 109
    .local v16, providerAccountName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, found:Z
    move-object/from16 v6, p2

    .local v6, arr$:[Landroid/accounts/Account;
    array-length v13, v6

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v4, v6, v12

    .line 111
    .local v4, accountManagerAccount:Landroid/accounts/Account;
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 112
    const/4 v10, 0x1

    .line 116
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    :cond_3
    if-nez v10, :cond_2

    .line 117
    iget v0, v15, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_5

    .line 118
    const-string v17, "Email"

    const-string v18, "Account reconciler noticed incomplete account; ignoring"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .restart local v4       #accountManagerAccount:Landroid/accounts/Account;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 123
    .end local v4           #accountManagerAccount:Landroid/accounts/Account;
    :cond_5
    const/4 v14, 0x1

    .line 124
    if-eqz p4, :cond_2

    .line 126
    const-string v17, "Email"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account deleted in AccountManager; deleting from provider: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static/range {p0 .. p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v17

    iget-wide v0, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V

    goto :goto_0

    .line 136
    .end local v6           #arr$:[Landroid/accounts/Account;
    .end local v10           #found:Z
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v15           #providerAccount:Lcom/android/emailcommon/provider/Account;
    .end local v16           #providerAccountName:Ljava/lang/String;
    :cond_6
    move-object/from16 v6, p2

    .restart local v6       #arr$:[Landroid/accounts/Account;
    array-length v13, v6

    .restart local v13       #len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    :goto_2
    if-ge v12, v13, :cond_0

    aget-object v4, v6, v12

    .line 137
    .restart local v4       #accountManagerAccount:Landroid/accounts/Account;
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 138
    .local v5, accountManagerAccountName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 139
    .restart local v10       #found:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/Account;

    .line 140
    .local v8, cachedEasAccount:Lcom/android/emailcommon/provider/Account;
    iget-object v0, v8, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 141
    const/4 v10, 0x1

    goto :goto_3

    .line 144
    .end local v8           #cachedEasAccount:Lcom/android/emailcommon/provider/Account;
    :cond_8
    const-string v17, " _"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 145
    const/4 v10, 0x1

    .line 147
    :cond_9
    if-nez v10, :cond_a

    .line 149
    const/4 v14, 0x1

    .line 151
    if-eqz p4, :cond_a

    .line 152
    const-string v17, "Email"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Account deleted from provider; deleting from AccountManager: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    .line 161
    .local v7, blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    .end local v7           #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    :cond_a
    :goto_4
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto :goto_2

    .line 162
    .end local v12           #i$:I
    .restart local v7       #blockingResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Ljava/lang/Boolean;>;"
    .local v11, i$:Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 163
    .local v9, e:Landroid/accounts/OperationCanceledException;
    const-string v17, "Email"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 164
    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v9

    .line 165
    .local v9, e:Landroid/accounts/AuthenticatorException;
    const-string v17, "Email"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 166
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v9

    .line 167
    .local v9, e:Ljava/io/IOException;
    const-string v17, "Email"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
