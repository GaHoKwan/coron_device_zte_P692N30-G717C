.class public Lcom/amoi/AmoiEngineerMode/base/InfoItem;
.super Ljava/lang/Object;
.source "InfoItem.java"


# static fields
.field public static final LEVEL_HIGH:I = 0x2

.field public static final LEVEL_NORMAL:I = 0x1


# instance fields
.field private label:Ljava/lang/String;

.field private level:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "value"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->level:I

    .line 17
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->label:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->value:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "label"
    .parameter "value"
    .parameter "level"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->level:I

    .line 22
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->label:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->value:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->level:I

    .line 25
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->level:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->label:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 48
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->level:I

    .line 49
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->value:Ljava/lang/String;

    .line 41
    return-void
.end method
