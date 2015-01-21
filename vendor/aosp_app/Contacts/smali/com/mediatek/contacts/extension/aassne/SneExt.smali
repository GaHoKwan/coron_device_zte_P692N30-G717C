.class public Lcom/mediatek/contacts/extension/aassne/SneExt;
.super Ljava/lang/Object;
.source "SneExt.java"


# static fields
.field private static final ERROR:I = -0x1

.field private static MAX_USIM_SNE_MAX_LENGTH:[I = null

.field private static final TAG:Ljava/lang/String; = "SnesExt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/contacts/extension/aassne/SneExt;->MAX_USIM_SNE_MAX_LENGTH:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildNicknameValueForInsert(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 2
    .parameter "slotId"
    .parameter "cv"
    .parameter "nickname"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/mediatek/contacts/extension/aassne/SneExt;->hasSne(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "sne"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ensureNicknameKindForEditorExt(Lcom/android/contacts/model/account/AccountType;ILcom/android/contacts/model/RawContactDelta;)V
    .locals 4
    .parameter "type"
    .parameter "slotId"
    .parameter "entity"

    .prologue
    .line 60
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v3, "ExtensionForSNE"

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 63
    .local v0, dataKind:Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/mediatek/contacts/extension/aassne/SneExt;->hasSne(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/model/UsimAccountType;->updateNickname(Lcom/android/contacts/model/dataitem/DataKind;Z)V

    .line 66
    :cond_0
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-static {p2, p0, v1}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 68
    .end local v0           #dataKind:Lcom/android/contacts/model/dataitem/DataKind;
    :cond_1
    return-void
.end method

.method public static hasSne(I)Z
    .locals 7
    .parameter "slot"

    .prologue
    .line 34
    const-string v4, "SnesExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[hasSne]slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, hasSne:Z
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    const-string v4, "SnesExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 50
    .end local v1           #hasSne:Z
    .local v2, hasSne:I
    :goto_0
    return v2

    .line 41
    .end local v2           #hasSne:I
    .restart local v1       #hasSne:Z
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 42
    .local v3, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_1

    .line 43
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->hasSne()Z

    move-result v1

    .line 44
    const-string v4, "SnesExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasSne, hasSne="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v3           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_1
    const-string v4, "SnesExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[hasSne] hasSne:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 50
    .restart local v2       #hasSne:I
    goto :goto_0

    .line 46
    .end local v2           #hasSne:I
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SnesExt"

    const-string v5, "[hasSne] exception."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isNickname(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 71
    invoke-static {}, Lcom/mediatek/contacts/extension/aassne/SneExt;->isSneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSneEnable()Z
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v1, "ExtensionForSNE"

    invoke-virtual {v0, v1}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateDataToDb(ILjava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "slotId"
    .parameter "accountType"
    .parameter "resolver"
    .parameter "updateNickname"
    .parameter "oldNickname"
    .parameter "rawId"

    .prologue
    .line 87
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v1, "ExtensionForSNE"

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/contacts/extension/aassne/SneExt;->hasSne(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v3, arrNickname:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v8, "ExtensionForSNE"

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/ext/ContactAccountExtension;->updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z

    .line 96
    .end local v3           #arrNickname:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
