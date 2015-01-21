.class public Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SubContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/SubContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public phoneType:I

.field public phoneTypeSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "nameWithPhoneType"

    .prologue
    const/4 v4, 0x7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    .local v1, nameLen:I
    add-int/lit8 v2, v1, -0x2

    if-ltz v2, :cond_4

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    .line 111
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 112
    .local v0, c:C
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneTypeSuffix:Ljava/lang/String;

    .line 113
    const/16 v2, 0x57

    if-ne v0, v2, :cond_0

    .line 114
    const/4 v2, 0x3

    iput v2, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    .line 122
    :goto_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 128
    .end local v0           #c:C
    :goto_1
    return-void

    .line 115
    .restart local v0       #c:C
    :cond_0
    const/16 v2, 0x4d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_2

    .line 116
    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 117
    :cond_2
    const/16 v2, 0x48

    if-ne v0, v2, :cond_3

    .line 118
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 120
    :cond_3
    iput v4, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 124
    .end local v0           #c:C
    :cond_4
    const-string v2, ""

    iput-object v2, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneTypeSuffix:Ljava/lang/String;

    .line 125
    iput v4, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->phoneType:I

    .line 126
    iput-object p1, p0, Lcom/mediatek/contacts/SubContactsUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_1
.end method
