.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$7;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->loadDataList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$7;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 658
    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 659
    const/4 v0, -0x1

    .line 663
    :goto_0
    return v0

    .line 660
    :cond_0
    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;
    invoke-static {p2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 661
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;
    invoke-static {p2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$7;->compare(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)I

    move-result v0

    return v0
.end method
