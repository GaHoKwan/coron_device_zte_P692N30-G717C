.class public Lcom/mediatek/contacts/model/LocalPhoneAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "LocalPhoneAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "Local Phone Account"

.field public static final TAG:Ljava/lang/String; = "LocalPhoneAccountType"


# instance fields
.field private mCAccountEx:Lcom/android/contacts/ext/ContactAccountExtension;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    .line 28
    const-string v1, "Local Phone Account"

    iput-object v1, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 31
    const v1, 0x7f0c00f0

    iput v1, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 32
    const v1, 0x7f020034

    iput v1, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 37
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 53
    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    const-string v2, "ExtensionForOP09"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Lcom/android/contacts/model/account/AccountType$DefinitionException;
    const-string v1, "LocalPhoneAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 155
    .local v3, kind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v6

    const-string v7, "ExtensionForOP01"

    invoke-virtual {v6, v7}, Lcom/android/contacts/ext/ContactAccountExtension;->needNewDataKind(Ljava/lang/String;)Z

    move-result v4

    .line 157
    .local v4, result:Z
    if-eqz v4, :cond_5

    .line 158
    const/4 v5, 0x0

    .line 159
    .local v5, str:Ljava/lang/String;
    const/4 v1, 0x0

    .line 160
    .local v1, displayName:I
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 161
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 162
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v6, v6, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    const-string v6, "LocalPhoneAccountType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "str : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v5, :cond_0

    const-string v6, "data1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    move v1, v2

    .line 161
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    if-eqz v5, :cond_1

    const-string v6, "data5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    .line 168
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v9}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    goto :goto_1

    .line 169
    :cond_1
    if-eqz v5, :cond_2

    const-string v6, "data4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    .line 171
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v9}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    goto :goto_1

    .line 172
    :cond_2
    if-eqz v5, :cond_3

    const-string v6, "data6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v10}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    .line 174
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v9}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    goto :goto_1

    .line 176
    :cond_3
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v6, v9}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    goto :goto_1

    .line 179
    :cond_4
    const-string v6, "LocalPhoneAccountType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " display_name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    .end local v0           #count:I
    .end local v1           #displayName:I
    .end local v2           #i:I
    .end local v5           #str:Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 188
    .local v0, kind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const-string v3, "ExtensionForOP01"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->needNewDataKind(Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 191
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->buildImType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 113
    .local v6, kind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v10

    const-string v11, "ExtensionForOP01"

    invoke-virtual {v10, v11}, Lcom/android/contacts/ext/ContactAccountExtension;->needNewDataKind(Ljava/lang/String;)Z

    move-result v8

    .line 115
    .local v8, result:Z
    if-eqz v8, :cond_4

    .line 116
    const/4 v9, 0x0

    .line 117
    .local v9, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 118
    .local v3, displayName:I
    const/4 v7, 0x0

    .line 119
    .local v7, phoneticMiddelName:I
    const/4 v5, 0x0

    .line 120
    .local v5, j:I
    const/4 v0, 0x0

    .line 121
    .local v0, a:Z
    const/4 v1, 0x0

    .line 122
    .local v1, b:Z
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 123
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 124
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v10, v10, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 125
    const-string v10, "LocalPhoneAccountType"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "str : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v9, :cond_0

    const-string v10, "data1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    move v3, v4

    .line 123
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_0
    if-eqz v9, :cond_1

    const-string v10, "data8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    move v7, v4

    goto :goto_1

    .line 130
    :cond_1
    if-eqz v9, :cond_2

    const-string v10, "data4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 131
    move v5, v4

    .line 132
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-boolean v0, v10, Lcom/android/contacts/model/account/AccountType$EditField;->longForm:Z

    .line 133
    const-string v10, "LocalPhoneAccountType"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " a : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v10, v13}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    .line 135
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/account/AccountType$EditField;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    goto :goto_1

    .line 138
    :cond_2
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/account/AccountType$EditField;

    invoke-virtual {v10, v13}, Lcom/android/contacts/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    goto :goto_1

    .line 141
    :cond_3
    const-string v10, "LocalPhoneAccountType"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " display_name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | phonetic_middel_name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " |a : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eq v3, v7, :cond_4

    .line 145
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    iget-object v10, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    .end local v0           #a:Z
    .end local v1           #b:Z
    .end local v2           #count:I
    .end local v3           #displayName:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #phoneticMiddelName:I
    .end local v9           #str:Ljava/lang/String;
    :cond_4
    return-object v6
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v10, 0x7f0c0257

    const v9, 0x7f0c0256

    const v8, 0x7f0c0255

    const/4 v7, 0x1

    const v6, 0x22071

    .line 65
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 66
    .local v0, kindForLoacalPhone:Lcom/android/contacts/model/dataitem/DataKind;
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 68
    .local v1, useJapaneseOrder:Z
    const-string v2, "data2"

    iput-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 70
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/mediatek/contacts/model/LocalPhoneAccountType;->buildPostalType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 75
    if-eqz v1, :cond_0

    .line 76
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0c025b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0c025a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0c0259

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0c0258

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data6"

    invoke-direct {v3, v4, v10, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data5"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data5"

    invoke-direct {v3, v4, v9, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data6"

    invoke-direct {v3, v4, v10, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data7"

    const v5, 0x7f0c0258

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data8"

    const v5, 0x7f0c0259

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data9"

    const v5, 0x7f0c025a

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v4, "data10"

    const v5, 0x7f0c025b

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method
