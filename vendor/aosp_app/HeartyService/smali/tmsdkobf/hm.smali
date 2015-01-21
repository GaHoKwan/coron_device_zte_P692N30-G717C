.class final Ltmsdkobf/hm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .parameter "firewallPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/netsetting/Rule;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rules:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/netsetting/Rule;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " set-hosts "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, hostScript:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " set-uids "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, uidScript:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltmsdk/common/module/netsetting/Rule;

    .line 57
    .local v3, rule:Ltmsdk/common/module/netsetting/Rule;
    iget v7, v3, Ltmsdk/common/module/netsetting/Rule;->type:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v7, v3, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Ltmsdk/common/module/netsetting/Rule;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mobile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    iget-object v7, v3, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Ltmsdk/common/module/netsetting/Rule;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wifi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v7, v3, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Ltmsdk/common/module/netsetting/Rule;->host:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 74
    .end local v3           #rule:Ltmsdk/common/module/netsetting/Rule;
    :cond_2
    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, result:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 82
    :cond_3
    :goto_1
    return v5

    .line 78
    :cond_4
    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    move v5, v6

    .line 82
    goto :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "firewallPath"
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set-enable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 41
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static bb(Ljava/lang/String;)Z
    .locals 6
    .parameter "firewallPath"

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 755 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is-chain-inited"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 21
    :goto_0
    return v1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public static bc(Ljava/lang/String;)Z
    .locals 6
    .parameter "firewallPath"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-static {p0}, Ltmsdkobf/hm;->bb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " init-chain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, v2

    .line 31
    goto :goto_0
.end method

.method public static bd(Ljava/lang/String;)Z
    .locals 5
    .parameter "firewallPath"

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get-enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 49
    :goto_0
    return v1

    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 21
    .parameter "firewallPath"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/netsetting/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " list-rules "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, result:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 88
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :cond_0
    :goto_0
    return-object v13

    .line 91
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v13, ruleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/netsetting/Rule;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v14, uidMobileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/netsetting/Rule;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v15, uidWifiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/netsetting/Rule;>;"
    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, lines:[Ljava/lang/String;
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_6

    aget-object v7, v2, v3

    .line 96
    .local v7, line:Ljava/lang/String;
    const-string v17, "[ ]+"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, part:[Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 99
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "host"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 100
    new-instance v12, Ltmsdk/common/module/netsetting/Rule;

    invoke-direct {v12}, Ltmsdk/common/module/netsetting/Rule;-><init>()V

    .line 101
    .local v12, rule:Ltmsdk/common/module/netsetting/Rule;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v12, Ltmsdk/common/module/netsetting/Rule;->type:I

    .line 102
    const/16 v17, 0x1

    aget-object v17, v10, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Ltmsdk/common/module/netsetting/Rule;->host:Ljava/lang/String;

    .line 103
    const/16 v17, 0x2

    aget-object v17, v10, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Ltmsdk/common/module/netsetting/Rule;->hostVerdict:Ljava/lang/String;

    .line 104
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v12           #rule:Ltmsdk/common/module/netsetting/Rule;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 107
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "mobile"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 108
    .local v5, isMobile:Z
    if-nez v5, :cond_4

    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 109
    :cond_4
    new-instance v12, Ltmsdk/common/module/netsetting/Rule;

    invoke-direct {v12}, Ltmsdk/common/module/netsetting/Rule;-><init>()V

    .line 110
    .restart local v12       #rule:Ltmsdk/common/module/netsetting/Rule;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v12, Ltmsdk/common/module/netsetting/Rule;->type:I

    .line 111
    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Ltmsdk/common/module/netsetting/Rule;->uid:I

    .line 112
    if-eqz v5, :cond_5

    .line 113
    const/16 v17, 0x2

    aget-object v17, v10, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Ltmsdk/common/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    .line 114
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 116
    :cond_5
    const/16 v17, 0x2

    aget-object v17, v10, v17

    move-object/from16 v0, v17

    iput-object v0, v12, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    .line 117
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    .end local v5           #isMobile:Z
    .end local v7           #line:Ljava/lang/String;
    .end local v10           #part:[Ljava/lang/String;
    .end local v12           #rule:Ltmsdk/common/module/netsetting/Rule;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3           #i$:I
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ltmsdk/common/module/netsetting/Rule;

    .line 125
    .local v16, wifiRule:Ltmsdk/common/module/netsetting/Rule;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltmsdk/common/module/netsetting/Rule;

    .line 126
    .local v9, mobileRule:Ltmsdk/common/module/netsetting/Rule;
    move-object/from16 v0, v16

    iget v0, v0, Ltmsdk/common/module/netsetting/Rule;->uid:I

    move/from16 v17, v0

    iget v0, v9, Ltmsdk/common/module/netsetting/Rule;->uid:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 127
    move-object/from16 v0, v16

    iget-object v0, v0, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v9, Ltmsdk/common/module/netsetting/Rule;->uidWifiVerdict:Ljava/lang/String;

    goto :goto_3

    .line 131
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #mobileRule:Ltmsdk/common/module/netsetting/Rule;
    .end local v16           #wifiRule:Ltmsdk/common/module/netsetting/Rule;
    :cond_9
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method
