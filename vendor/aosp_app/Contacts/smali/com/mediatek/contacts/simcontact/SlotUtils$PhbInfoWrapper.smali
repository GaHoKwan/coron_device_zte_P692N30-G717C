.class final Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhbInfoWrapper"
.end annotation


# instance fields
.field private mInitialized:Z

.field private mSlotId:I

.field private mUsimAnrCount:I

.field private mUsimEmailCount:I

.field private mUsimGroupMaxCount:I

.field private mUsimGroupMaxNameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "slotId"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    .line 174
    iput p1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    .line 175
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 176
    return-void
.end method


# virtual methods
.method public getUsimAnrCount()I
    .locals 3

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 244
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimAnrCount] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    return v0
.end method

.method public getUsimEmailCount()I
    .locals 3

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 252
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimEmailCount] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    return v0
.end method

.method public getUsimGroupMaxCount()I
    .locals 3

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 236
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimGroupMaxCount] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    return v0
.end method

.method public getUsimGroupMaxNameLength()I
    .locals 3

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 228
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUsimGroupMaxNameLength] slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    return v0
.end method

.method public refreshPhbInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 187
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]refreshing phb info for slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]sim not insert, refresh aborted. slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-boolean v6, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 222
    :goto_0
    return-void

    .line 193
    :cond_0
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]phb not ready, refresh aborted. slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-boolean v7, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    goto :goto_0

    .line 199
    :cond_1
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]not usim phb, nothing to refresh, keep default, slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-boolean v6, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    goto :goto_0

    .line 205
    :cond_2
    iget v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mSlotId:I

    invoke-static {v3}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, serviceName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 208
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxNameLen()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 209
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 210
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 211
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    iput-boolean v6, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 219
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[refreshPhbInfo]refreshing done, UsimGroupMaxNameLenght = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UsimGroupMaxCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UsimAnrCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UsimEmailCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[refreshPhbInfo]Exception happened when refreshing phb info"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    iput-boolean v7, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    goto/16 :goto_0
.end method

.method public resetPhbInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 180
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 181
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 182
    iput v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    .line 183
    iput-boolean v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 184
    return-void
.end method
