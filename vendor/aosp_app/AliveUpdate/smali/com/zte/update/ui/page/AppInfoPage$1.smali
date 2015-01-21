.class Lcom/zte/update/ui/page/AppInfoPage$1;
.super Ljava/lang/Object;
.source "AppInfoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/page/AppInfoPage;->initCheckLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoPage$1;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage$1;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-virtual {v0}, Lcom/zte/update/ui/page/AppInfoPage;->startCheckWithNetworkCheck()V

    .line 73
    return-void
.end method
