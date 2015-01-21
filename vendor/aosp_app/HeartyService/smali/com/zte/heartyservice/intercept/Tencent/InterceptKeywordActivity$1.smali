.class Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;
.super Ljava/lang/Object;
.source "InterceptKeywordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;->val$edittext:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    return-void
.end method
