.class public Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;
.super Ljava/lang/Object;
.source "NewSmsFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/NewSmsFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clue"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mBox:I

.field private mDate:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "date"
    .parameter "address"
    .parameter "body"
    .parameter "box"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide p1, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mDate:J

    .line 137
    iput-object p3, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mAddress:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mBody:Ljava/lang/String;

    .line 139
    iput p5, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mBox:I

    .line 140
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBox()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mBox:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mDate:J

    return-wide v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mAddress:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mBody:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setBox(I)V
    .locals 0
    .parameter "box"

    .prologue
    .line 171
    iput p1, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mBox:I

    .line 172
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/mediatek/apst/target/service/NewSmsFinder$Clue;->mDate:J

    .line 160
    return-void
.end method
