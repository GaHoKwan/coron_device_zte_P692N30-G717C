.class Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$1;
.super Ljava/lang/Object;
.source "OofGetWaitingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 226
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$1;->this$0:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    iput-object p2, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$1;->val$fm:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$1;->val$fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 231
    return-void
.end method
