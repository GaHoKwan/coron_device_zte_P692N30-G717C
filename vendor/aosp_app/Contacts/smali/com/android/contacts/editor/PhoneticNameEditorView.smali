.class public Lcom/android/contacts/editor/PhoneticNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "PhoneticNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public static buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "family"
    .parameter "middle"
    .parameter "given"

    .prologue
    const/16 v2, 0x20

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUnstructuredPhoneticNameColumn(Ljava/lang/String;)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 157
    const-string v0, "#phoneticName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/model/dataitem/StructuredNameDataItem;
    .locals 8
    .parameter "phoneticName"
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, family:Ljava/lang/String;
    const/4 v2, 0x0

    .line 104
    .local v2, middle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 106
    .local v1, given:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    const-string v4, " "

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, strings:[Ljava/lang/String;
    array-length v4, v3

    packed-switch v4, :pswitch_data_0

    .line 124
    .end local v3           #strings:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 125
    new-instance p1, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    .end local p1
    invoke-direct {p1}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;-><init>()V

    .line 127
    .restart local p1
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->setPhoneticFamilyName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v2}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->setPhoneticMiddleName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v1}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;->setPhoneticGivenName(Ljava/lang/String;)V

    .line 130
    return-object p1

    .line 110
    .restart local v3       #strings:[Ljava/lang/String;
    :pswitch_0
    aget-object v0, v3, v6

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    aget-object v0, v3, v6

    .line 114
    aget-object v1, v3, v7

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    aget-object v0, v3, v6

    .line 118
    aget-object v2, v3, v7

    .line 119
    const/4 v4, 0x2

    aget-object v1, v3, v4

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public hasData()Z
    .locals 5

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    .line 226
    .local v0, entry:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, family:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, middle:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, given:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "column"
    .parameter "value"

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->hasShortAndLongForms()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getEntry()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    .line 208
    .local v0, entry:Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->areOptionalFieldsVisible()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 210
    .local v1, isEditingUnstructuredPhoneticName:Z
    :goto_1
    invoke-static {p1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->isUnstructuredPhoneticNameColumn(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v1           #isEditingUnstructuredPhoneticName:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 219
    .end local v0           #entry:Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 175
    instance-of v1, p2, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    if-nez v1, :cond_0

    .line 176
    new-instance v0, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;

    invoke-direct {v0, p2}, Lcom/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta;-><init>(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)V

    .end local p2
    .local v0, entry:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    move-object p2, v0

    .line 185
    .end local v0           #entry:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .restart local p2
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 191
    :cond_1
    return-void
.end method
