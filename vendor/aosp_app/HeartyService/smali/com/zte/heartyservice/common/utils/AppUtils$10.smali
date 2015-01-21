.class final Lcom/zte/heartyservice/common/utils/AppUtils$10;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/AppUtils;->realShowNetSetDialog2(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inputFlow:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zte/heartyservice/common/utils/AppUtils$10;->val$inputFlow:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/zte/heartyservice/common/utils/AppUtils$10;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$10;->val$inputFlow:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 571
    return-void
.end method
