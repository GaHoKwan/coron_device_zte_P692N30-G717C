.class Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$2;
.super Ljava/lang/Object;
.source "OofGetWaitingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->showAlertDialog(Landroid/app/FragmentManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

.field final synthetic val$fm:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;Landroid/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$2;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iput-object p2, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$2;->val$fm:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$2;->val$fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 237
    return-void
.end method
