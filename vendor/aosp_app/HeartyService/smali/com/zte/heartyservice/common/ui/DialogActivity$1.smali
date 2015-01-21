.class Lcom/zte/heartyservice/common/ui/DialogActivity$1;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/ui/DialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/ui/DialogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/ui/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/DialogActivity$1;->this$0:Lcom/zte/heartyservice/common/ui/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/DialogActivity$1;->this$0:Lcom/zte/heartyservice/common/ui/DialogActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->finish()V

    .line 49
    return-void
.end method
