.class public Lcom/zte/heartservice/ZteInfoSettings;
.super Landroid/preference/PreferenceActivity;
.source "ZteInfoSettings.java"


# static fields
.field private static final HEADER_EMAIL:I = 0x4

.field private static final HEADER_INTRODUCE_FALG:Ljava/lang/String; = "zte_info_introduce"

.field private static final HEADER_MICRO_BLOG:I = 0x3

.field private static final HEADER_NOTE:I = 0x0

.field private static final HEADER_TEL:I = 0x2

.field private static final HEADER_TYPE_FALG:Ljava/lang/String; = "zte_info_type"

.field private static final HEADER_WEB:I = 0x1

.field private static final META_DATA_ZTE_INFO_HEADERS:Ljava/lang/String; = "com.zte.heartyservice.setting.ZTE_INFO_HEADERS"

.field private static final TAG:Ljava/lang/String; = "ZteInfoSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v5, 0x0

    .line 50
    .local v5, resid:I
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 51
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteInfoSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    .line 50
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 52
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 53
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.zte.heartyservice.setting.ZTE_INFO_HEADERS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 58
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 59
    const v5, 0x7f040001

    .line 62
    :cond_1
    invoke-virtual {p0, v5, p1}, Lcom/zte/heartservice/ZteInfoSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 66
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getCarrier()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, carrier:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 78
    .end local v2           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_3
    return-void

    .line 55
    .end local v1           #carrier:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 56
    .local v4, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ZteInfoSettings"

    const-string v7, "Could not find activity!"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    .end local v4           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #carrier:Ljava/lang/String;
    .restart local v2       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 72
    .local v3, item:Landroid/preference/PreferenceActivity$Header;
    iget-object v7, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcom/zte/heartservice/ZteInfoSettings;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/zte/heartservice/ZteInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    .line 44
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 16
    .parameter "header"
    .parameter "position"

    .prologue
    .line 89
    const/4 v6, 0x1

    .line 90
    .local v6, type:I
    const/4 v1, 0x0

    .line 91
    .local v1, infoText:Ljava/lang/String;
    const/4 v3, 0x0

    .line 92
    .local v3, introduce:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 93
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 94
    const-string v8, "zte_info_type"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 95
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 96
    const-string v8, "zte_info_introduce"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    .line 98
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 99
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, title:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, summary:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    packed-switch v6, :pswitch_data_0

    .line 165
    const-string v7, "ZteInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "zte info type error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_3
    return-void

    .line 99
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 101
    .restart local v5       #title:Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 102
    .restart local v4       #summary:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_2

    .line 107
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 108
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v5, v9}, Lcom/zte/heartservice/ZteServiceCenter;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 110
    :cond_4
    const-string v7, "ZteInfoSettings"

    const-string v8, "no detail info"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 116
    :pswitch_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 117
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    .line 118
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 117
    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mContext:Landroid/content/Context;

    .line 122
    const v8, 0x7f080161

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 125
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    .line 126
    const v11, 0x7f080170

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    .line 127
    const v15, 0x7f080161

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 128
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 125
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 128
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 123
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-static {v7, v8, v9, v5, v2}, Lcom/zte/heartservice/ZteServiceCenter;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_3

    .line 130
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v7, "ZteInfoSettings"

    const-string v8, "no website addr"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 135
    :pswitch_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.CALL"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tel:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .restart local v2       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f080163

    invoke-static {v7, v8, v1, v5, v2}, Lcom/zte/heartservice/ZteServiceCenter;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 141
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    const-string v7, "ZteInfoSettings"

    const-string v8, "no phonenumber"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 146
    :pswitch_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 147
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mailto:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 147
    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartservice/ZteInfoSettings;->mContext:Landroid/content/Context;

    .line 152
    const v8, 0x7f080162

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 155
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    .line 156
    const v11, 0x7f080170

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/heartservice/ZteInfoSettings;->mResource:Landroid/content/res/Resources;

    .line 157
    const v15, 0x7f080162

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 158
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 155
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 158
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 153
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-static {v7, v8, v9, v5, v2}, Lcom/zte/heartservice/ZteServiceCenter;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 160
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    const-string v7, "ZteInfoSettings"

    const-string v8, "no email addr"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 85
    return-void
.end method
