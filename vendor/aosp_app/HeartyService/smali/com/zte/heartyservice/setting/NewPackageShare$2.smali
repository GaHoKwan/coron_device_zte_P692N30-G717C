.class Lcom/zte/heartyservice/setting/NewPackageShare$2;
.super Ljava/lang/Object;
.source "NewPackageShare.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/NewPackageShare;->shareByAliveShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/NewPackageShare;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/zte/heartyservice/setting/NewPackageShare$2;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 453
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 454
    const-string v2, "xxx"

    const-string v3, "No AliveShare "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v2, "http://cloud.ztedevices.com/s/oK7Ow"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 456
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 457
    .local v0, downloadIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/setting/NewPackageShare$2;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method
