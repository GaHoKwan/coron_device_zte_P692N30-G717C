.class Lcom/android/mms/ui/MessageListItem$18;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->showFileAttachmentView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$attach:Lcom/android/mms/model/FileAttachmentModel;

.field final synthetic val$filesize:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;ILcom/android/mms/model/FileAttachmentModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2298
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput p2, p0, Lcom/android/mms/ui/MessageListItem$18;->val$filesize:I

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$18;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$18;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2301
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0352

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2303
    iget v1, p0, Lcom/android/mms/ui/MessageListItem$18;->val$filesize:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$18;->val$attach:Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v1}, Lcom/android/mms/model/FileAttachmentModel;->isSupportFormat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2304
    const v1, 0x7f0b0354

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2311
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2312
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageListItem$18$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$18$1;-><init>(Lcom/android/mms/ui/MessageListItem$18;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2347
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/ui/MessageListItem$18$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageListItem$18$2;-><init>(Lcom/android/mms/ui/MessageListItem$18;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2353
    return-void

    .line 2305
    :cond_0
    iget v1, p0, Lcom/android/mms/ui/MessageListItem$18;->val$filesize:I

    if-le v1, v2, :cond_1

    .line 2306
    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2308
    :cond_1
    const v1, 0x7f0b0356

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
