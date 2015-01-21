.class Lcom/zte/heartyservice/intercept/Common/AddModelActivity$1;
.super Ljava/lang/Object;
.source "AddModelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 85
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    #calls: Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->addItem()V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->access$000(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    return-void
.end method
