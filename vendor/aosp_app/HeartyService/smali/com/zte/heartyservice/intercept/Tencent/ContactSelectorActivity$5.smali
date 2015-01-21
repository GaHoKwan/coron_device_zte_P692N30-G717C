.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$5;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->changeCustomView(I)V
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
    .line 461
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 466
    return-void
.end method
