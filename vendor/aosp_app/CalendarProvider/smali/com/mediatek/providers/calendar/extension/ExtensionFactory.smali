.class public Lcom/mediatek/providers/calendar/extension/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarsTableExt(Ljava/lang/String;)Lcom/mediatek/providers/calendar/extension/ITableExt;
    .locals 1
    .parameter "tableName"

    .prologue
    .line 6
    new-instance v0, Lcom/mediatek/providers/calendar/extension/PCSyncAccountExt;

    invoke-direct {v0, p0}, Lcom/mediatek/providers/calendar/extension/PCSyncAccountExt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDatabaseUpgradeExt()Lcom/mediatek/providers/calendar/extension/IDatabaseUpgradeExt;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;

    invoke-direct {v0}, Lcom/mediatek/providers/calendar/extension/MTKDatabaseUpgradeExt;-><init>()V

    return-object v0
.end method
