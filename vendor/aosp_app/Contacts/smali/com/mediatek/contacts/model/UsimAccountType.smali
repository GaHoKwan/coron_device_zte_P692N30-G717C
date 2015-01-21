.class public Lcom/mediatek/contacts/model/UsimAccountType;
.super Lcom/android/contacts/model/account/BaseAccountType;
.source "UsimAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "USIM Account"

.field public static final TAG:Ljava/lang/String; = "UsimAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType;-><init>()V

    .line 33
    const-string v1, "USIM Account"

    iput-object v1, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 34
    const v1, 0x7f0c00f3

    iput v1, p0, Lcom/android/contacts/model/account/AccountType;->titleRes:I

    .line 35
    const v1, 0x7f020071

    iput v1, p0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/UsimAccountType;->addDataKindStructuredNameForUsim(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/UsimAccountType;->addDataKindDisplayNameForUsim(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 43
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    const-string v2, "ExtensionForSNE"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/UsimAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/UsimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 50
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/UsimAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 51
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/model/UsimAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    :try_end_0
    .catch Lcom/android/contacts/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Lcom/android/contacts/model/account/AccountType$DefinitionException;
    const-string v1, "UsimAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateNickname(Lcom/android/contacts/model/dataitem/DataKind;Z)V
    .locals 5
    .parameter "kind"
    .parameter "hasSne"

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 158
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c0205

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 164
    :cond_2
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    goto :goto_1
.end method

.method public static updatePhoneType(ILcom/android/contacts/model/dataitem/DataKind;)V
    .locals 10
    .parameter "slotId"
    .parameter "kind"

    .prologue
    const/16 v9, 0x65

    const/4 v8, -0x1

    .line 116
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 117
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 121
    :goto_0
    invoke-static {p0}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getAAS(I)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    const/4 v3, -0x1

    .line 123
    .local v3, specificMax:I
    const-string v5, "UsimAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updatePhoneType] slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " specificMax="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v9}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/AlphaTag;

    .line 128
    .local v4, tag:Lcom/mediatek/common/telephony/AlphaTag;
    invoke-virtual {v4}, Lcom/mediatek/common/telephony/AlphaTag;->getRecordIndex()I

    move-result v2

    .line 129
    .local v2, recordIndex:I
    const-string v5, "BaseAccountType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePhoneType() label="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mediatek/common/telephony/AlphaTag;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v9}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v0           #atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #recordIndex:I
    .end local v3           #specificMax:I
    .end local v4           #tag:Lcom/mediatek/common/telephony/AlphaTag;
    :cond_0
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 133
    .restart local v0       #atList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #specificMax:I
    :cond_1
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iput v8, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 136
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 137
    iget-object v5, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v6, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v7, "data1"

    const v8, 0x7f0c014f

    const/4 v9, 0x3

    invoke-direct {v6, v7, v8, v9}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method


# virtual methods
.method protected addDataKindDisplayNameForUsim(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 74
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "#displayName"

    const v2, 0x7f0c0204

    const/4 v3, -0x1

    const v5, 0x7f0400cd

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 76
    .local v6, kind:Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 78
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 79
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c025c

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v6
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 173
    .local v0, kind:Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 174
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 178
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    const-string v2, "ExtensionForAAS"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/mediatek/contacts/model/UsimAccountType;->buildEmailType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 185
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0150

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-object v0
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0c0205

    const/4 v4, 0x1

    .line 143
    const-string v0, "UsimAccountType"

    const-string v1, "addDataKindNickname() for USIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/nickname"

    const/16 v3, 0x73

    const v5, 0x7f0400cd

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 146
    .local v6, kind:Lcom/android/contacts/model/dataitem/DataKind;
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 147
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 148
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 150
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    return-object v6
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 203
    .local v0, kind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 204
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c0148

    const v5, 0x24001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 87
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 88
    .local v0, kind:Lcom/android/contacts/model/dataitem/DataKind;
    const-string v1, "UsimAccountType"

    const-string v2, "call addDataKindPhone()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    const-string v2, "ExtensionForAAS"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 94
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x65

    invoke-static {v2}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_0
    iput v4, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 108
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 109
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0c014f

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0

    .line 98
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 99
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/mediatek/contacts/model/UsimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 192
    invoke-super {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 193
    .local v0, kind:Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 194
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 195
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v3, "data15"

    invoke-direct {v2, v3, v4, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-object v0
.end method

.method protected addDataKindStructuredNameForUsim(Landroid/content/Context;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0c0204

    const/4 v4, 0x1

    .line 59
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const-string v1, "vnd.android.cursor.item/name"

    const/4 v3, -0x1

    const v5, 0x7f0400cc

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/AccountType;->addKind(Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v6

    .line 61
    .local v6, kind:Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 62
    new-instance v0, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 64
    iput v4, v6, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 66
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 67
    iget-object v0, v6, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v2, "data1"

    const v3, 0x7f0c025c

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v6
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public isIccCardAccount()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public isUSIMAccountType()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method
