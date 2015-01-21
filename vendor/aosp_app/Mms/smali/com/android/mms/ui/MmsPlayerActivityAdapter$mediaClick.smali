.class Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;
.super Ljava/lang/Object;
.source "MmsPlayerActivityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "mediaClick"
.end annotation


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivityAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsPlayerActivityAdapter;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "type"
    .parameter "title"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->this$0:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mUri:Landroid/net/Uri;

    .line 333
    iput-object p3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mType:Ljava/lang/String;

    .line 334
    iput-object p4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mTitle:Ljava/lang/String;

    .line 335
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const-string v3, "SingleItemOnly"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const-string v3, "CanShare"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v3, "mediatek.intent.extra.FULLSCREEN_NOTIFICATION"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mType:Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->this$0:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->access$000(Lcom/android/mms/ui/MmsPlayerActivityAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 352
    .local v2, mchooserIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivityAdapter$mediaClick;->this$0:Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivityAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->access$000(Lcom/android/mms/ui/MmsPlayerActivityAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
