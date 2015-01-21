.class public Lcom/android/mms/util/SmileyParser2;
.super Ljava/lang/Object;
.source "SmileyParser2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/SmileyParser2$XmSmileys;,
        Lcom/android/mms/util/SmileyParser2$AdSmileys;,
        Lcom/android/mms/util/SmileyParser2$DynamicSmileys;,
        Lcom/android/mms/util/SmileyParser2$LargeSmileys;,
        Lcom/android/mms/util/SmileyParser2$Smileys;
    }
.end annotation


# static fields
.field public static final AD_SMILEY_RES_IDS:[I = null

.field public static final AD_SMIPEY_CN:I = 0x7f06001d

.field public static final AD_SMIPEY_EN:I = 0x7f06001c

.field public static final DEFAULT_SMILEY_RES_IDS:[I = null

.field public static final DEFAULT_SMILEY_TEXTS:I = 0x7f060021

.field public static final DYNAMIC_SMILEY_RES_IDS:[I = null

.field public static final DYNAMIC_SMIPEY_CN:I = 0x7f06001a

.field public static final DYNAMIC_SMIPEY_EN:I = 0x7f060019

.field public static final LARGE_SMILEY_CN:I = 0x7f060018

.field public static final LARGE_SMILEY_EN:I = 0x7f060016

.field public static final LARGE_SMILEY_RES_IDS:[I = null

.field public static final XM_SMILEY_RES_IDS:[I = null

.field public static final XM_SMIPEY_CN:I = 0x7f060020

.field public static final XM_SMIPEY_EN:I = 0x7f06001f

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/mms/util/SmileyParser2;


# instance fields
.field private final mAdCnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdCnTexts:[Ljava/lang/String;

.field private final mAdEnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdEnTexts:[Ljava/lang/String;

.field private final mDynamicCnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicCnTexts:[Ljava/lang/String;

.field private final mDynamicEnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDynamicEnTexts:[Ljava/lang/String;

.field private final mLargeCnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLargeCnTexts:[Ljava/lang/String;

.field private final mLargeEnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLargeEnTexts:[Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmCnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmCnTexts:[Ljava/lang/String;

.field private final mXmEnRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmEnTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    const/16 v0, 0x46

    new-array v0, v0, [I

    invoke-static {v3}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v4

    invoke-static {v5}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v5

    invoke-static {v6}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v6

    invoke-static {v7}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x21

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x24

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x25

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x28

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x29

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x33

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x34

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x36

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x37

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x38

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x39

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x3a

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x3e

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x3f

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x40

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x41

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x42

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x43

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x44

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x45

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser2;->DEFAULT_SMILEY_RES_IDS:[I

    .line 421
    const/16 v0, 0x18

    new-array v0, v0, [I

    invoke-static {v3}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v4

    invoke-static {v5}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v5

    invoke-static {v6}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v6

    invoke-static {v7}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$LargeSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser2;->LARGE_SMILEY_RES_IDS:[I

    .line 448
    const/16 v0, 0x18

    new-array v0, v0, [I

    invoke-static {v3}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v4

    invoke-static {v5}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v5

    invoke-static {v6}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v6

    invoke-static {v7}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$DynamicSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser2;->DYNAMIC_SMILEY_RES_IDS:[I

    .line 475
    const/16 v0, 0x18

    new-array v0, v0, [I

    invoke-static {v3}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v4

    invoke-static {v5}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v5

    invoke-static {v6}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v6

    invoke-static {v7}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$AdSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser2;->AD_SMILEY_RES_IDS:[I

    .line 501
    const/16 v0, 0x18

    new-array v0, v0, [I

    invoke-static {v3}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v4}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v4

    invoke-static {v5}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v5

    invoke-static {v6}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v6

    invoke-static {v7}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser2$XmSmileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser2;->XM_SMILEY_RES_IDS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sput-object p1, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    .line 112
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnTexts:[Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnTexts:[Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnTexts:[Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnTexts:[Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnTexts:[Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnTexts:[Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnTexts:[Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnTexts:[Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyToRes:Ljava/util/HashMap;

    .line 122
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildLargeCnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnRes:Ljava/util/HashMap;

    .line 123
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildLargeEnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnRes:Ljava/util/HashMap;

    .line 124
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildDynamicEnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnRes:Ljava/util/HashMap;

    .line 125
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildDynamicCnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnRes:Ljava/util/HashMap;

    .line 126
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildAdCnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnRes:Ljava/util/HashMap;

    .line 127
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildAdEnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnRes:Ljava/util/HashMap;

    .line 128
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildXmEnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnRes:Ljava/util/HashMap;

    .line 129
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildXmCnRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnRes:Ljava/util/HashMap;

    .line 130
    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser2;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mPattern:Ljava/util/regex/Pattern;

    .line 131
    return-void
.end method

.method private buildAdCnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->AD_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 618
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 622
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->AD_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    return-object v1
.end method

.method private buildAdEnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->AD_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 633
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 637
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->AD_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_1
    return-object v1
.end method

.method private buildDynamicCnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->DYNAMIC_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 603
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 607
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 608
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->DYNAMIC_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_1
    return-object v1
.end method

.method private buildDynamicEnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->DYNAMIC_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 590
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 594
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 595
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->DYNAMIC_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_1
    return-object v1
.end method

.method private buildLargeCnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->LARGE_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 560
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 564
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->LARGE_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_1
    return-object v1
.end method

.method private buildLargeEnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->LARGE_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 575
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 579
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->LARGE_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_1
    return-object v1
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 8

    .prologue
    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 685
    .local v3, patternString:Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    iget-object v0, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 687
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 545
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 548
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 549
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 550
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    return-object v1
.end method

.method private buildXmCnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->XM_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 648
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 651
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 652
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->XM_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_1
    return-object v1
.end method

.method private buildXmEnRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    sget-object v2, Lcom/android/mms/util/SmileyParser2;->XM_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 663
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 667
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 668
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser2;->XM_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/android/mms/util/SmileyParser2;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->sInstance:Lcom/android/mms/util/SmileyParser2;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/mms/util/SmileyParser2;

    sget-object v1, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/SmileyParser2;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/SmileyParser2;->sInstance:Lcom/android/mms/util/SmileyParser2;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/mms/util/SmileyParser2;->sInstance:Lcom/android/mms/util/SmileyParser2;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 86
    sput-object p0, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method


# virtual methods
.method public addSmileySpans(Landroid/text/Editable;I)I
    .locals 13
    .parameter "text"
    .parameter "maxNumber"

    .prologue
    const/4 v12, 0x0

    .line 725
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    const-class v9, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v12, v8, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ImageSpan;

    .line 726
    .local v4, emoticonList:[Landroid/text/style/ImageSpan;
    array-length v8, v4

    if-eqz v8, :cond_0

    .line 727
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v4

    if-ge v5, v8, :cond_0

    .line 728
    aget-object v8, v4, v5

    invoke-interface {p1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 727
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 731
    .end local v5           #i:I
    :cond_0
    iget-object v8, p0, Lcom/android/mms/util/SmileyParser2;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 732
    .local v6, matcher:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 733
    .local v1, counter:I
    :cond_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 734
    iget-object v8, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 735
    .local v7, resId:I
    sget-object v8, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 736
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 738
    .local v0, bound:I
    invoke-virtual {v3, v12, v12, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 739
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    const/16 v11, 0x21

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 741
    add-int/lit8 v1, v1, 0x1

    .line 742
    if-ne v1, p2, :cond_1

    move v2, v1

    .line 746
    .end local v0           #bound:I
    .end local v1           #counter:I
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #resId:I
    .local v2, counter:I
    :goto_1
    return v2

    .end local v2           #counter:I
    .restart local v1       #counter:I
    :cond_2
    move v2, v1

    .end local v1           #counter:I
    .restart local v2       #counter:I
    goto :goto_1
.end method

.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "text"

    .prologue
    const/4 v9, 0x0

    .line 706
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 707
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/android/mms/util/SmileyParser2;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 708
    .local v3, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 709
    iget-object v5, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 710
    .local v4, resId:I
    sget-object v5, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 711
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 713
    .local v0, bound:I
    invoke-virtual {v2, v9, v9, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 714
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 718
    .end local v0           #bound:I
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #resId:I
    :cond_0
    return-object v1
.end method

.method public getAdRes(Ljava/lang/String;)I
    .locals 3
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v1

    .line 794
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdCnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 795
    .local v0, resId:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 796
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mAdEnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resId:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 797
    .restart local v0       #resId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 801
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getDynamicRes(Ljava/lang/String;)I
    .locals 3
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v1

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicCnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 781
    .local v0, resId:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 782
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mDynamicEnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resId:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 783
    .restart local v0       #resId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 787
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLargeRes(Ljava/lang/String;)I
    .locals 3
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 763
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v1

    .line 766
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeCnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 767
    .local v0, resId:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 768
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mLargeEnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resId:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 769
    .restart local v0       #resId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 773
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSmileySpanResSingle(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 750
    iget-object v4, p0, Lcom/android/mms/util/SmileyParser2;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 751
    .local v2, matcher:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 752
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    iget-object v4, p0, Lcom/android/mms/util/SmileyParser2;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 754
    .local v3, resId:I
    sget-object v4, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 755
    sget-object v4, Lcom/android/mms/util/SmileyParser2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 757
    .local v0, bound:I
    invoke-virtual {v1, v6, v6, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 759
    .end local v0           #bound:I
    .end local v3           #resId:I
    :cond_0
    return-object v1
.end method

.method public getXmRes(Ljava/lang/String;)I
    .locals 3
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v1

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmCnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 809
    .local v0, resId:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 810
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser2;->mXmEnRes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #resId:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 811
    .restart local v0       #resId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 815
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
