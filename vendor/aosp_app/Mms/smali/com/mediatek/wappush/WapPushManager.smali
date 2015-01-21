.class public abstract Lcom/mediatek/wappush/WapPushManager;
.super Ljava/lang/Object;
.source "WapPushManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Mms/WapPush"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mediatek/wappush/WapPushManager;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static createManager(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/wappush/WapPushManager;
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, manager:Lcom/mediatek/wappush/WapPushManager;
    sget-object v1, Lcom/mediatek/encapsulation/com/mediatek/pushparser/si/SiMessage;->TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/mediatek/wappush/SiManager;

    .end local v0           #manager:Lcom/mediatek/wappush/WapPushManager;
    invoke-direct {v0, p0}, Lcom/mediatek/wappush/SiManager;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v0       #manager:Lcom/mediatek/wappush/WapPushManager;
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const-string v1, "SL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Lcom/mediatek/wappush/SlManager;

    .end local v0           #manager:Lcom/mediatek/wappush/WapPushManager;
    invoke-direct {v0, p0}, Lcom/mediatek/wappush/SlManager;-><init>(Landroid/content/Context;)V

    .restart local v0       #manager:Lcom/mediatek/wappush/WapPushManager;
    goto :goto_0

    .line 69
    :cond_1
    sget-object v1, Lcom/mediatek/encapsulation/com/mediatek/pushparser/co/CoMessage;->TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    new-instance v0, Lcom/mediatek/wappush/CoManager;

    .end local v0           #manager:Lcom/mediatek/wappush/WapPushManager;
    invoke-direct {v0, p0}, Lcom/mediatek/wappush/CoManager;-><init>(Landroid/content/Context;)V

    .restart local v0       #manager:Lcom/mediatek/wappush/WapPushManager;
    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "Mms/WapPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createManager: wrong type!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract handleIncoming(Lcom/mediatek/encapsulation/com/mediatek/pushparser/ParsedMessage;)V
.end method
