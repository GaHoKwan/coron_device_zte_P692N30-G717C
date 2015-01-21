.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$4;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->showModeSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelected:[Z

    aput-boolean p3, v0, p2

    .line 388
    return-void
.end method
