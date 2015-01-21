.class Lcom/zte/heartyservice/intercept/Common/AddModelActivity$5;
.super Ljava/lang/Object;
.source "AddModelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->finish()V

    .line 150
    return-void
.end method
