.class public Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;
.super Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;
.source "OP09MmsMultiDeleteExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/Op09MmsComposeExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public deleteMassTextMsg([Ljava/lang/String;)Z
    .locals 2
    .parameter "msgIds"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;->getHost()Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;->deleteMassTextInHost([Ljava/lang/String;)V

    .line 54
    const-string v0, "Mms/Op09MmsComposeExt"

    const-string v1, "deleteMassTextMsg in Plugin method"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public lockMassTextMsgs(Landroid/content/Context;[JZ)Z
    .locals 12
    .parameter "context"
    .parameter "msgIds"
    .parameter "locked"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 59
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v10, p2

    if-ge v10, v9, :cond_1

    :cond_0
    move v9, v8

    .line 79
    :goto_0
    return v9

    .line 62
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v4, idBuffer:Ljava/lang/StringBuffer;
    move-object v0, p2

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v6, :cond_2

    aget-wide v2, v0, v1

    .line 64
    .local v2, id:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v2           #id:J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v8, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, ids:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 68
    .local v7, values:Landroid/content/ContentValues;
    const-string v10, "locked"

    if-eqz p3, :cond_3

    move v8, v9

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;

    invoke-direct {v10, p0, p1, v7, v5}, Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt$1;-><init>(Lcom/mediatek/mms/op09/OP09MmsMultiDeleteExt;Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
