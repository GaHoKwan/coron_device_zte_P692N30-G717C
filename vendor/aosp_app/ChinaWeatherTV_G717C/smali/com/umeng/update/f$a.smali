.class Lcom/umeng/update/f$a;
.super Lcom/umeng/common/util/j;
.source "UpdateInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/update/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/umeng/update/f;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/update/f;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/umeng/update/f$a;->d:Lcom/umeng/update/f;

    .line 186
    invoke-direct {p0, p2}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/update/f$a;->e:Ljava/lang/String;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/update/f$a;->f:Ljava/lang/String;

    .line 187
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 5

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/umeng/update/f$a;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 217
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/umeng/update/f$a;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/f$a;->b:Landroid/app/Notification;

    iget-object v1, p0, Lcom/umeng/update/f$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/f$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/f$a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/update/f$a;->b:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 222
    iget-object v0, p0, Lcom/umeng/update/f$a;->b:Landroid/app/Notification;

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/umeng/update/f$a;
    .locals 2
    .parameter

    .prologue
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/umeng/update/f$a;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 193
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/f$a;->f:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/umeng/update/f$a;
    .locals 2
    .parameter

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/umeng/update/f$a;->c:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 201
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/f$a;->e:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/umeng/update/f$a;
    .locals 2
    .parameter

    .prologue
    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/umeng/update/f$a;->c:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 210
    :cond_0
    return-object p0
.end method
