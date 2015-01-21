.class public interface abstract Lcom/mediatek/providers/calendar/extension/IDatabaseUpgradeExt;
.super Ljava/lang/Object;
.source "IDatabaseUpgradeExt.java"


# static fields
.field public static final MTK_GB_DB_VERSION:I = 0x67

.field public static final MTK_GB_DB_VERSION_BASE:I = 0x66

.field public static final MTK_ICS_DB_VERSION:I = 0x135

.field public static final MTK_ICS_DB_VERSION_BASE:I = 0x134

.field public static final MTK_JB_DB_VERSION:I = 0x194

.field public static final MTK_JB_DB_VERSION_BASE:I = 0x193


# virtual methods
.method public abstract downgradeMTKVersionsIfNeeded(ILandroid/database/sqlite/SQLiteDatabase;)I
.end method

.method public abstract upgradeToMTKJBVersion(Landroid/database/sqlite/SQLiteDatabase;)I
.end method
