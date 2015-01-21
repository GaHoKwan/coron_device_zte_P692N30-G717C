.class Lcom/android/bluetooth/btservice/AdapterService$2;
.super Ljava/lang/Object;
.source "AdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterService;->handleWfdConcurrency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$checkboxLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/view/View;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->val$checkboxLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 491
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 492
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->val$checkboxLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x2050089

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040447

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/bluetooth/btservice/AdapterService$2$3;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/btservice/AdapterService$2$3;-><init>(Lcom/android/bluetooth/btservice/AdapterService$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/bluetooth/btservice/AdapterService$2$2;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/btservice/AdapterService$2$2;-><init>(Lcom/android/bluetooth/btservice/AdapterService$2;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/bluetooth/btservice/AdapterService$2$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/btservice/AdapterService$2$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService$2;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$402(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 530
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    #getter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$400(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 531
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    #getter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$400(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 533
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$2;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    #getter for: Lcom/android/bluetooth/btservice/AdapterService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$400(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 534
    return-void
.end method
