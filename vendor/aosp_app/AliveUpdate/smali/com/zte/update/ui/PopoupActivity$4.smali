.class Lcom/zte/update/ui/PopoupActivity$4;
.super Ljava/lang/Object;
.source "PopoupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/PopoupActivity;->initCancelAndWifiButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/PopoupActivity;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/PopoupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/zte/update/ui/PopoupActivity$4;->this$0:Lcom/zte/update/ui/PopoupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 190
    invoke-static {}, Lcom/zte/update/ui/ActivityLauncher;->startWifiSettingActivity()V

    .line 191
    iget-object v0, p0, Lcom/zte/update/ui/PopoupActivity$4;->this$0:Lcom/zte/update/ui/PopoupActivity;

    #calls: Lcom/zte/update/ui/PopoupActivity;->onPopoupClose()V
    invoke-static {v0}, Lcom/zte/update/ui/PopoupActivity;->access$000(Lcom/zte/update/ui/PopoupActivity;)V

    .line 193
    return-void
.end method
