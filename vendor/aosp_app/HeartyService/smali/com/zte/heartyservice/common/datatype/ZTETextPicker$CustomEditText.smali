.class public Lcom/zte/heartyservice/common/datatype/ZTETextPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "ZTETextPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/ZTETextPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1203
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1204
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 1208
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 1209
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/ZTETextPicker$CustomEditText;->clearFocus()V

    .line 1212
    :cond_0
    return-void
.end method
