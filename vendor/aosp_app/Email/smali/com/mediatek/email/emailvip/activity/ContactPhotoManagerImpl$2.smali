.class Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$2;
.super Landroid/util/LruCache;
.source "ListPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$2;->this$0:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 0
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 317
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 309
    check-cast p3, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .end local p3
    check-cast p4, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$2;->entryRemoved(ZLjava/lang/Object;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;)I
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 311
    iget-object v0, p2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 309
    check-cast p2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$2;->sizeOf(Ljava/lang/Object;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;)I

    move-result v0

    return v0
.end method
