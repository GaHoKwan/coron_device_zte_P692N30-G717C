.class public abstract Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "GroupingListAdapterWithHeader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GroupingListAdapterWithHeader"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field mHeaderPositionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mHeaderPositionList:Ljava/util/HashMap;

    .line 20
    iget-object v0, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mHeaderPositionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 21
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 45
    const-string v0, "GroupingListAdapterWithHeader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCursor(), cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->log(Ljava/lang/String;)V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->log(Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_1

    .line 29
    iput-object p1, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mCursor:Landroid/database/Cursor;

    .line 30
    iget-object v0, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mHeaderPositionList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 32
    :cond_1
    invoke-super {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 33
    return-void
.end method

.method public isDateGroupHeader(I)Z
    .locals 3
    .parameter "cursorPosition"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mHeaderPositionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 37
    .local v0, isDateGroupHeader:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public setGroupHeaderPosition(I)V
    .locals 3
    .parameter "cursorPosition"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->mHeaderPositionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
