.class Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$1;
.super Ljava/lang/Object;
.source "PasswordProtectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity$1;->this$0:Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;

    #calls: Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->onItemClickHandler(I)V
    invoke-static {v0, p3}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->access$000(Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;I)V

    .line 73
    return-void
.end method
