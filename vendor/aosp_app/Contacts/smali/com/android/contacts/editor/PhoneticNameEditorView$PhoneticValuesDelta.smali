.class Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
.super Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PhoneticNameEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneticValuesDelta"
.end annotation


# instance fields
.field private mPhoneticName:Ljava/lang/String;

.field private mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 40
    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    .line 41
    return-void
.end method

.method private buildPhoneticName()V
    .locals 4

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, family:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, middle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, given:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private parsePhoneticName(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 64
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    move-result-object v0

    .line 65
    .local v0, dataItem:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setPhoneticFamilyName(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setPhoneticMiddleName(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setPhoneticGivenName(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 56
    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 45
    const-string v0, "#phoneticName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iput-object p2, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mPhoneticName:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->parsePhoneticName(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->mValues:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;->buildPhoneticName()V

    goto :goto_0
.end method
