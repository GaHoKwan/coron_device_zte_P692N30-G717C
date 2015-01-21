.class Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$1;
.super Ljava/lang/Object;
.source "AbstractAllBtnActionbarActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->setBackedListItems(Ljava/util/ArrayList;)V
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
        "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/apksmanager/AbstractListItem;Lcom/zte/heartyservice/apksmanager/AbstractListItem;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 306
    :cond_0
    const/4 v2, 0x0

    .line 310
    :goto_0
    return v2

    .line 308
    :cond_1
    invoke-virtual {p1}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StringUtils;->trimHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, str_a:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StringUtils;->trimHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, str_b:Ljava/lang/String;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    check-cast p1, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$1;->compare(Lcom/zte/heartyservice/apksmanager/AbstractListItem;Lcom/zte/heartyservice/apksmanager/AbstractListItem;)I

    move-result v0

    return v0
.end method
