.class Lcom/zte/heartyservice/setting/NewPackageShare$1;
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
    .line 461
    iput-object p1, p0, Lcom/zte/heartyservice/setting/NewPackageShare$1;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 464
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 465
    return-void
.end method
