.class public Lcom/mediatek/calendar/ext/DefaultLunarExtension;
.super Ljava/lang/Object;
.source "DefaultLunarExtension.java"

# interfaces
.implements Lcom/mediatek/calendar/ext/ILunarExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowLunarCalendar()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getGregFestival(II)Ljava/lang/String;
    .locals 1
    .parameter "gregorianMonth"
    .parameter "gregorianDay"

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLunarFestival(II)Ljava/lang/String;
    .locals 1
    .parameter "lunarMonth"
    .parameter "lunarDay"

    .prologue
    .line 7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSolarTermNameByIndex(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecialWord(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
