.class public Lcom/mediatek/op/policy/OP09EmergencyButtonExt;
.super Lcom/mediatek/op/policy/DefaultEmergencyButtonExt;
.source "OP09EmergencyButtonExt.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final INFOKEY:Ljava/lang/String; = "com.android.phone.extra.slot"

.field private static final TAG:Ljava/lang/String; = "OP09EmergencyButtonExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/op/policy/DefaultEmergencyButtonExt;-><init>()V

    return-void
.end method


# virtual methods
.method public addSlotIdForEmergencyDialer(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "slotId"

    .prologue
    .line 72
    const-string v0, "OP09EmergencyButtonExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSlotIdForEmergencyDialer, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 76
    const-string v0, "com.android.phone.extra.slot"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    :cond_0
    return-void
.end method

.method public enableEccOnSlide()Z
    .locals 2

    .prologue
    .line 82
    const-string v0, "OP09EmergencyButtonExt"

    const-string v1, "needShowEccOnSlide return true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public isSimInService([ZI)Z
    .locals 4
    .parameter "isServiceSupportEcc"
    .parameter "slotId"

    .prologue
    .line 53
    array-length v0, p1

    .line 54
    .local v0, simSlotCount:I
    const-string v1, "OP09EmergencyButtonExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInService slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simSlotCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-ltz p2, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_0

    .line 61
    const-string v1, "OP09EmergencyButtonExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInService slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isServiceSupportEcc[slotId] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    aget-boolean v1, p1, p2

    .line 66
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/op/policy/DefaultEmergencyButtonExt;->isSimInService([ZI)Z

    move-result v1

    goto :goto_0
.end method
