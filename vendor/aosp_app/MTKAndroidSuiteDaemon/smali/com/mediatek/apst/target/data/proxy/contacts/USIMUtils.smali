.class public Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;
.super Ljava/lang/Object;
.source "USIMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;,
        Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$SimSlot;,
        Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$SimType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_LOCAL_PHONE:Ljava/lang/String; = "Phone"

.field public static final ACCOUNT_NAME_SIM:Ljava/lang/String; = "SIM0"

.field public static final ACCOUNT_NAME_SIM2:Ljava/lang/String; = "SIM1"

.field public static final ACCOUNT_NAME_SIM3:Ljava/lang/String; = "SIM2"

.field public static final ACCOUNT_NAME_SIM4:Ljava/lang/String; = "SIM3"

.field public static final ACCOUNT_NAME_USIM:Ljava/lang/String; = "USIM0"

.field public static final ACCOUNT_NAME_USIM2:Ljava/lang/String; = "USIM1"

.field public static final ACCOUNT_NAME_USIM3:Ljava/lang/String; = "USIM2"

.field public static final ACCOUNT_NAME_USIM4:Ljava/lang/String; = "USIM3"

.field public static final ACCOUNT_TYPE_LOCAL_PHONE:Ljava/lang/String; = "Local Phone Account"

.field public static final ACCOUNT_TYPE_SIM:Ljava/lang/String; = "SIM Account"

.field public static final ACCOUNT_TYPE_USIM:Ljava/lang/String; = "USIM Account"

.field public static final GEMINI_SLOT1:I = 0x0

.field public static final GEMINI_SLOT2:I = 0x1

.field public static final GEMINI_SLOT3:I = 0x2

.field public static final GEMINI_SLOT4:I = 0x3

.field private static final MAX_USIM_GROUP_COUNT:[I = null

.field private static final MAX_USIM_GROUP_NAME_LENGTH:[I = null

.field public static final SIMPHONEBOOK2_SERVICE:Ljava/lang/String; = "simphonebook2"

.field public static final SIMPHONEBOOK3_SERVICE:Ljava/lang/String; = "simphonebook3"

.field public static final SIMPHONEBOOK4_SERVICE:Ljava/lang/String; = "simphonebook4"

.field public static final SIMPHONEBOOK_SERVICE:Ljava/lang/String; = "simphonebook"

.field public static final SINGLE_SLOT:I = 0x0

.field public static final SLOT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "APST"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_COUNT:[I

    return-void

    .line 71
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 72
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    return-void
.end method

.method public static addUSIMGroupMember(III)Z
    .locals 6
    .parameter "slotId"
    .parameter "simIndex"
    .parameter "grpId"

    .prologue
    .line 544
    const/4 v2, 0x0

    .line 546
    .local v2, succFlag:Z
    if-lez p2, :cond_0

    .line 547
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 548
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 549
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->addContactToGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 550
    const/4 v2, 0x1

    .line 558
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v3, "APST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addUSIMGroupMember]succFlag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v2

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "APST"

    const-string v4, "catched exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createUSIMGroup(ILjava/lang/String;)I
    .locals 8
    .parameter "slotId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 397
    const/4 v3, 0x0

    .line 399
    .local v3, nameLen:I
    :try_start_0
    const-string v4, "GBK"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v3, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getUSIMGrpMaxNameLen(I)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 404
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;

    const-string v5, "Group name out of bound"

    invoke-direct {v4, v5, v7, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 408
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 409
    .local v2, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v1, -0x1

    .line 410
    .local v1, grpId:I
    if-eqz v2, :cond_1

    .line 411
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    .line 413
    :cond_1
    const-string v4, "APST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[createUSIMGroup]inserted grpId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-lez v1, :cond_2

    .line 415
    new-instance v4, Lcom/mediatek/common/telephony/UsimGroup;

    invoke-direct {v4, v1, p1}, Lcom/mediatek/common/telephony/UsimGroup;-><init>(ILjava/lang/String;)V

    .line 432
    :goto_1
    return v1

    .line 417
    :cond_2
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 419
    :sswitch_0
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;

    const-string v5, "Group count out of bound"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 425
    :sswitch_1
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;

    const-string v5, "Group name out of bound"

    invoke-direct {v4, v5, v7, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        -0x14 -> :sswitch_0
        -0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static deleteUSIMGroup(ILjava/lang/String;)I
    .locals 6
    .parameter "slotId"
    .parameter "name"

    .prologue
    .line 515
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 516
    .local v3, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v1, -0x2

    .line 518
    .local v1, errCode:I
    :try_start_0
    invoke-static {p0, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->hasExistGroup(ILjava/lang/String;)I

    move-result v2

    .line 519
    .local v2, grpId:I
    if-lez v2, :cond_0

    .line 520
    invoke-interface {v3, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->removeUsimGroupById(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 522
    const/4 v1, 0x0

    .line 530
    .end local v2           #grpId:I
    :cond_0
    :goto_0
    return v1

    .line 524
    .restart local v2       #grpId:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 527
    .end local v2           #grpId:I
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "APST"

    const-string v5, "catched exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteUSIMGroupMember(III)Z
    .locals 6
    .parameter "slotId"
    .parameter "simIndex"
    .parameter "grpId"

    .prologue
    .line 573
    const-string v3, "APST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----deleteUSIMGroupMember[slotId]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v3, "APST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----deleteUSIMGroupMember[simIndex]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v3, "APST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-----deleteUSIMGroupMember[grpId]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x0

    .line 578
    .local v2, succFlag:Z
    if-lez p2, :cond_0

    .line 579
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 580
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 581
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->removeContactFromGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 582
    const/4 v2, 0x1

    .line 589
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "APST"

    const-string v4, "catched exception."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountTypeBySlot(I)Ljava/lang/String;
    .locals 4
    .parameter "slotId"

    .prologue
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountTypeBySlot()+ - slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 182
    if-ltz p0, :cond_0

    const/4 v2, 0x3

    if-le p0, v2, :cond_1

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! - slot id error. slotid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 186
    :cond_1
    const/4 v1, 0x0

    .line 187
    .local v1, simtype:I
    const-string v0, "SIM Account"

    .line 189
    .local v0, simAccountType:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimTypeBySlot(I)I

    move-result v1

    .line 191
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 192
    const-string v0, "USIM Account"

    .line 199
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountTypeBySlot()- - slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AccountType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! getAccountTypeBySlot - slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no sim inserted!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 298
    const-string v2, "APST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIIccPhoneBook]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v1, "simphonebook"

    .line 303
    .local v1, serviceName:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 304
    const-string v1, "simphonebook2"

    .line 313
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 315
    .local v0, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const-string v2, "APST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIIccPhoneBook]iIccPhb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v0

    .line 305
    .end local v0           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 306
    const-string v1, "simphonebook3"

    goto :goto_0

    .line 307
    :cond_2
    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    .line 308
    const-string v1, "simphonebook4"

    goto :goto_0
.end method

.method public static getSimAccountNameBySlot(I)Ljava/lang/String;
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, retSimName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, simType:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimAccountNameBySlot()+ slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 214
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    const-string v3, "getSimAccountNameBySlot Error! - SIM not inserted!"

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    move-object v1, v0

    .line 249
    .end local v0           #retSimName:Ljava/lang/String;
    .local v1, retSimName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 219
    .end local v1           #retSimName:Ljava/lang/String;
    .restart local v0       #retSimName:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimTypeBySlot(I)I

    move-result v2

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimAccountNameBySlot() slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simType(0-SIM/1-USIM):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 223
    if-nez v2, :cond_4

    .line 224
    const-string v0, "SIM0"

    .line 225
    if-ne v5, p0, :cond_2

    .line 226
    const-string v0, "SIM1"

    .line 247
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimAccountNameBySlot()- slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SimName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    move-object v1, v0

    .line 249
    .end local v0           #retSimName:Ljava/lang/String;
    .restart local v1       #retSimName:Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v1           #retSimName:Ljava/lang/String;
    .restart local v0       #retSimName:Ljava/lang/String;
    :cond_2
    if-ne v6, p0, :cond_3

    .line 228
    const-string v0, "SIM2"

    goto :goto_1

    .line 229
    :cond_3
    if-ne v7, p0, :cond_1

    .line 230
    const-string v0, "SIM3"

    goto :goto_1

    .line 232
    :cond_4
    if-ne v5, v2, :cond_7

    .line 233
    const-string v0, "USIM0"

    .line 234
    if-ne v5, p0, :cond_5

    .line 235
    const-string v0, "USIM1"

    goto :goto_1

    .line 236
    :cond_5
    if-ne v6, p0, :cond_6

    .line 237
    const-string v0, "USIM2"

    goto :goto_1

    .line 238
    :cond_6
    if-ne v7, p0, :cond_1

    .line 239
    const-string v0, "USIM3"

    goto :goto_1

    .line 242
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimAccountNameBySlot() Error!  get SIM Type error! simType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSimTypeBySlot(I)I
    .locals 8
    .parameter "slotId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 123
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    .line 124
    .local v2, simType:I
    if-nez v1, :cond_0

    .line 125
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "iTel is null, may be phone service hasn\'t int done!"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v2

    .line 143
    .end local v2           #simType:I
    .local v3, simType:I
    :goto_0
    return v3

    .line 130
    .end local v3           #simType:I
    .restart local v2       #simType:I
    :cond_0
    :try_start_0
    const-string v4, "USIM"

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    const/4 v2, 0x1

    .line 142
    :cond_1
    :goto_1
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    move v3, v2

    .line 143
    .end local v2           #simType:I
    .restart local v3       #simType:I
    goto :goto_0

    .line 139
    .end local v3           #simType:I
    .restart local v2       #simType:I
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSlotIdByAccountName(Ljava/lang/String;)I
    .locals 2
    .parameter "accountName"

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, slotId:I
    const-string v1, "USIM0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const/4 v0, 0x0

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    const-string v1, "USIM1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    const/4 v0, 0x1

    goto :goto_0

    .line 603
    :cond_2
    const-string v1, "USIM2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 604
    const/4 v0, 0x2

    goto :goto_0

    .line 605
    :cond_3
    const-string v1, "USIM3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getUSIMGrpMaxNameLen(I)I
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v2, -0x1

    .line 325
    if-ltz p0, :cond_0

    const/4 v3, 0x3

    if-le p0, v3, :cond_1

    .line 326
    :cond_0
    const-string v3, "APST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return v2

    .line 329
    :cond_1
    const-string v3, "APST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getUSIMGrpMaxNameLen]slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|maxNameLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    aget v5, v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v3, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    aget v3, v3, p0

    if-gez v3, :cond_2

    .line 333
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 334
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_2

    .line 335
    sget-object v3, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxNameLen()I

    move-result v4

    aput v4, v3, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    :goto_1
    const-string v2, "APST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUSIMGrpMaxNameLen]end slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|maxNameLen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    aget v4, v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v2, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    aget v2, v2, p0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "APST"

    const-string v4, "catched exception."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v3, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->MAX_USIM_GROUP_NAME_LENGTH:[I

    aput v2, v3, p0

    goto :goto_1
.end method

.method public static hasExistGroup(ILjava/lang/String;)I
    .locals 11
    .parameter "slotId"
    .parameter "grpName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v2, -0x1

    .line 360
    .local v2, grpId:I
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 361
    .local v5, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const-string v8, "APST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "grpName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|iIccPhb:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v5, :cond_1

    :cond_0
    move v3, v2

    .line 381
    .end local v2           #grpId:I
    .local v3, grpId:I
    :goto_0
    return v3

    .line 365
    .end local v3           #grpId:I
    .restart local v2       #grpId:I
    :cond_1
    invoke-interface {v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGroups()Ljava/util/List;

    move-result-object v6

    .line 366
    .local v6, uList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    if-eqz v6, :cond_3

    .line 368
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/telephony/UsimGroup;

    .line 369
    .local v7, ug:Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, gName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 371
    .local v0, gIndex:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    if-lez v0, :cond_2

    .line 372
    const-string v8, "APST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[hasExistGroup]gName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "||gIndex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 375
    move v2, v0

    goto :goto_1

    .end local v0           #gIndex:I
    .end local v1           #gName:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_3
    move v3, v2

    .line 381
    .end local v2           #grpId:I
    .restart local v3       #grpId:I
    goto :goto_0
.end method

.method public static isSimInserted(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 154
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 155
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "iTel is null, may be phone service hasn\'t int done!"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 158
    :cond_1
    const/4 v2, 0x0

    .line 160
    .local v2, isSimInsert:Z
    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimUsimType(I)Z
    .locals 7
    .parameter "sourceLoacation"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 260
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 262
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 263
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "iTel is null, may be phone service hasn\'t int done!"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 286
    :goto_0
    return v2

    .line 266
    :cond_0
    const/4 v2, 0x0

    .line 268
    .local v2, isUsim:Z
    if-nez p0, :cond_2

    .line 269
    :try_start_0
    const-string v4, "USIM"

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccCardType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    const/4 v2, 0x1

    .line 285
    :cond_1
    :goto_1
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsim : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    if-lez p0, :cond_3

    .line 274
    :try_start_1
    const-string v4, "USIM"

    add-int/lit8 v5, p0, -0x1

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    const/4 v2, 0x1

    goto :goto_1

    .line 279
    :cond_3
    const-string v4, "sourceLoacation < 0"

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "catched exception."

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static syncUSIMGroupDeleteDualSim(Ljava/lang/String;)[I
    .locals 5
    .parameter "grpName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 475
    .local v0, errFlag:[I
    const/4 v1, -0x2

    .line 477
    .local v1, flag:I
    invoke-static {v3, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 478
    if-lez v1, :cond_0

    .line 479
    aput v1, v0, v3

    .line 481
    :cond_0
    invoke-static {v4, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 482
    if-lez v1, :cond_1

    .line 483
    aput v1, v0, v4

    .line 503
    :cond_1
    return-object v0
.end method

.method public static updateUSIMGroup(IILjava/lang/String;)I
    .locals 7
    .parameter "slotId"
    .parameter "nGasId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v3, 0x0

    .line 449
    .local v3, nameLen:I
    :try_start_0
    const-string v4, "GBK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v3, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getUSIMGrpMaxNameLen(I)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 454
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;

    const-string v5, "Group name out of bound"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 458
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 459
    .local v2, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v1, -0x1

    .line 460
    .local v1, grpId:I
    if-eqz v2, :cond_1

    .line 461
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimGroup(ILjava/lang/String;)I

    move-result v1

    .line 464
    :cond_1
    return v1
.end method
