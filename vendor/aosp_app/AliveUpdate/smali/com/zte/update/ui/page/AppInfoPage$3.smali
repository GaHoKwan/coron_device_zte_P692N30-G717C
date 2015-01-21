.class Lcom/zte/update/ui/page/AppInfoPage$3;
.super Lcom/zte/update/ui/pop/CheckActionWithPop;
.source "AppInfoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/page/AppInfoPage;->startCheckWithNetworkCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/page/AppInfoPage;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/page/AppInfoPage;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zte/update/ui/page/AppInfoPage$3;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    invoke-direct {p0, p2}, Lcom/zte/update/ui/pop/CheckActionWithPop;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoPage$3;->this$0:Lcom/zte/update/ui/page/AppInfoPage;

    iget-object v0, v0, Lcom/zte/update/ui/page/AppInfoPage;->checkLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-super {p0}, Lcom/zte/update/ui/pop/CheckActionWithPop;->action()V

    .line 138
    return-void
.end method
