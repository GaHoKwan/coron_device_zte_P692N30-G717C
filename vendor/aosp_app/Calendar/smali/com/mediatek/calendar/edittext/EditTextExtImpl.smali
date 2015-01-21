.class public Lcom/mediatek/calendar/edittext/EditTextExtImpl;
.super Ljava/lang/Object;
.source "EditTextExtImpl.java"

# interfaces
.implements Lcom/mediatek/calendar/edittext/IEditTextExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTextExtensionImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3
    .parameter "inputText"
    .parameter "context"
    .parameter "maxLength"

    .prologue
    .line 26
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 28
    .local v0, contentFilters:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;

    invoke-direct {v2, p0, p3, p3, p2}, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;-><init>(Lcom/mediatek/calendar/edittext/EditTextExtImpl;IILandroid/content/Context;)V

    aput-object v2, v0, v1

    .line 46
    return-object v0
.end method


# virtual methods
.method public setLengthInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)V
    .locals 1
    .parameter "inputText"
    .parameter "context"
    .parameter "maxLength"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/calendar/edittext/EditTextExtImpl;->createInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v0

    .line 19
    .local v0, inputFilters:[Landroid/text/InputFilter;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 22
    :cond_0
    return-void
.end method
