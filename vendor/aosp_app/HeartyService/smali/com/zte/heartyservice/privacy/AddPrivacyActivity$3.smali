.class Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;
.super Ljava/lang/Object;
.source "AddPrivacyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

.field final synthetic val$numbers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;->val$numbers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 105
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;->this$0:Lcom/zte/heartyservice/privacy/AddPrivacyActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;->val$numbers:Ljava/util/ArrayList;

    #calls: Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyNumbers(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->access$100(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Ljava/util/ArrayList;)V

    .line 108
    return-void
.end method
