.class public interface abstract Lcom/mediatek/mms/ext/IStringReplacement;
.super Ljava/lang/Object;
.source "IStringReplacement.java"


# static fields
.field public static final CAPACITY_SIM_CARD:I = 0xc

.field public static final CHANGE_MMS_TO_SMS:I = 0xd

.field public static final CONFIRM_DELETE_MSG:I = 0x8

.field public static final CONFIRM_DELETE_SELECTED_MESSAGES:I = 0xb

.field public static final GET_CAPACITY_FAILED:I = 0x7

.field public static final MANAGE_CARD_MSG_SUMMARY:I = 0x4

.field public static final MANAGE_CARD_MSG_TITLE:I = 0x3

.field public static final MANAGE_UIM_MESSAGE:I = 0x5

.field public static final MESSAGE_CANNOT_BE_OPERATED:I = 0xa

.field public static final SAVE_MSG_TO_CARD:I = 0x1

.field public static final SELECT_CARD:I = 0x2

.field public static final UIM_EMPTY:I = 0x6

.field public static final UIM_FULL_TITLE:I = 0x9


# virtual methods
.method public abstract getCTStrings(I)Ljava/lang/String;
.end method

.method public abstract getSaveLocationString()[Ljava/lang/String;
.end method

.method public abstract isEnableStringReplacement()Z
.end method
