.class public Lcom/android/quicksearchbox/preferences/SearchEngineUnifyPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SearchEngineUnifyPreference.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 35
    return-void
.end method
