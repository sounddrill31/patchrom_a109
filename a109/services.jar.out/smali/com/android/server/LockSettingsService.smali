.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$DatabaseHelper;,
        Lcom/android/server/LockSettingsService$DbCache;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEBUG_CACHE_PRINT:Z = false

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static NULL_CACHED_VALUE:Ljava/lang/String; = null

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static USE_DBCACHE:Z

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

.field private final mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 157
    const-string v0, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/LockSettingsService;->USE_DBCACHE:Z

    .line 158
    const-string v0, "NOT_EXIST_YET"

    sput-object v0, Lcom/android/server/LockSettingsService;->NULL_CACHED_VALUE:Ljava/lang/String;

    .line 648
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "lockscreen.lockedoutpermanently"

    aput-object v3, v0, v2

    const-string v3, "lockscreen.lockoutattemptdeadline"

    aput-object v3, v0, v1

    const-string v3, "lockscreen.patterneverchosen"

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v4, "lockscreen.password_type"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "lockscreen.password_type_alternate"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "lockscreen.password_salt"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "lockscreen.disabled"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "lockscreen.options"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "lockscreen.biometric_weak_fallback"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "lockscreen.weak_fallback"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "lockscreen.weak_fallback_for"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "lockscreen.voice_weak_fallback_set"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "lockscreen.biometricweakeverchosen"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "lockscreen.power_button_instantly_locks"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "lockscreen.passwordhistory"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "lock_biometric_weak_flags"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "lock_pattern_visible_pattern"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "lock_pattern_tactile_feedback_enabled"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 671
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "lock_screen_owner_info_enabled"

    aput-object v3, v0, v2

    const-string v2, "lock_screen_owner_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 157
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/android/server/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    .line 165
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 167
    new-instance v0, Lcom/android/server/LockSettingsService$DbCache;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$DbCache;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 242
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 243
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 244
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 339
    if-nez p2, :cond_0

    .line 340
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 343
    .local v0, "keyStore":Landroid/security/KeyStore;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 350
    .end local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v0    # "keyStore":Landroid/security/KeyStore;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private migrateOldData()V
    .locals 25

    .prologue
    .line 178
    :try_start_0
    const-string v22, "migrated"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 180
    .local v8, "cr":Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_1

    aget-object v20, v7, v11

    .line 181
    .local v20, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v8, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 182
    .local v21, "value":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 183
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 187
    .end local v20    # "validSetting":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_1
    const-string v22, "migrated"

    const-string v23, "true"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    const-string v22, "LockSettingsService"

    const-string v23, "Migrated lock settings to new location"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_2
    const-string v22, "migrated_user_specific"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_7

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    .line 194
    .local v16, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 195
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    .line 196
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v17, 0x0

    .local v17, "user":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 198
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 199
    .local v18, "userId":I
    const-string v5, "lock_screen_owner_info"

    .line 200
    .local v5, "OWNER_INFO":Ljava/lang/String;
    const-string v22, "lock_screen_owner_info"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 201
    .local v14, "ownerInfo":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 202
    const-string v22, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    const-string v22, ""

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v14, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 209
    :cond_3
    const-string v6, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    .local v6, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string v22, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 213
    .local v12, "ivalue":I
    if-eqz v12, :cond_5

    const/4 v10, 0x1

    .line 214
    .local v10, "enabled":Z
    :goto_2
    const-string v24, "lock_screen_owner_info_enabled"

    if-eqz v10, :cond_6

    const-wide/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    .end local v10    # "enabled":Z
    .end local v12    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string v22, "lock_screen_owner_info_enabled"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v8, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 196
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 213
    .restart local v12    # "ivalue":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 214
    .restart local v10    # "enabled":Z
    :cond_6
    const-wide/16 v22, 0x0

    goto :goto_3

    .line 215
    .end local v10    # "enabled":Z
    .end local v12    # "ivalue":I
    :catch_0
    move-exception v9

    .line 217
    .local v9, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 218
    const-string v22, "lock_screen_owner_info_enabled"

    const-wide/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 227
    .end local v5    # "OWNER_INFO":Ljava/lang/String;
    .end local v6    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v14    # "ownerInfo":Ljava/lang/String;
    .end local v16    # "um":Landroid/os/UserManager;
    .end local v17    # "user":I
    .end local v18    # "userId":I
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v15

    .line 228
    .local v15, "re":Landroid/os/RemoteException;
    const-string v22, "LockSettingsService"

    const-string v23, "Unable to migrate old data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v15    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 224
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "um":Landroid/os/UserManager;
    .restart local v17    # "user":I
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string v22, "migrated_user_specific"

    const-string v23, "true"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    const-string v22, "LockSettingsService"

    const-string v23, "Migrated per-user lock settings to new location"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 514
    move-object v11, p2

    .line 516
    .local v11, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/LockSettingsService;->USE_DBCACHE:Z

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsService$DbCache;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 523
    .local v8, "cachedResult":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 528
    sget-object v1, Lcom/android/server/LockSettingsService;->NULL_CACHED_VALUE:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    .end local v8    # "cachedResult":Ljava/lang/String;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local v8    # "cachedResult":Ljava/lang/String;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v8

    .line 534
    goto :goto_0

    .line 539
    .end local v8    # "cachedResult":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 540
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 546
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 552
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_3
    sget-boolean v1, Lcom/android/server/LockSettingsService;->USE_DBCACHE:Z

    if-eqz v1, :cond_4

    .line 558
    if-eqz v11, :cond_5

    .line 559
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    invoke-virtual {v1, p1, p3, v11}, Lcom/android/server/LockSettingsService$DbCache;->put(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_2
    move-object p2, v11

    .line 567
    goto :goto_0

    .line 549
    :catch_0
    move-exception v10

    .line 550
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read Db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 552
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 563
    :cond_5
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    sget-object v2, Lcom/android/server/LockSettingsService;->NULL_CACHED_VALUE:Ljava/lang/String;

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/server/LockSettingsService$DbCache;->put(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 458
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .local v1, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 461
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 465
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 469
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 463
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 476
    sget-boolean v2, Lcom/android/server/LockSettingsService;->USE_DBCACHE:Z

    if-eqz v2, :cond_1

    .line 482
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    invoke-virtual {v2, p2, p4}, Lcom/android/server/LockSettingsService$DbCache;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "cachedResult":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    .end local v0    # "cachedResult":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 492
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v2, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 498
    :try_start_0
    const-string v2, "locksettings"

    const-string v3, "name=? AND user=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 500
    const-string v2, "locksettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 501
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 506
    sget-boolean v2, Lcom/android/server/LockSettingsService;->USE_DBCACHE:Z

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    invoke-virtual {v2, p2, p4, p3}, Lcom/android/server/LockSettingsService$DbCache;->put(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 473
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 402
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 406
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 408
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 409
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 410
    if-gtz v1, :cond_1

    move v4, v7

    .line 425
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :cond_0
    :goto_0
    return v4

    .line 414
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_1
    iget-object v8, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v2

    .line 415
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 416
    .local v4, "matched":Z
    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 420
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 421
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    move v4, v7

    .line 425
    goto :goto_0

    .line 422
    :catch_1
    move-exception v3

    .line 423
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 374
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 377
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v6, v8, [B

    .line 379
    .local v6, "stored":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 380
    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 381
    if-gtz v1, :cond_1

    move v4, v7

    .line 397
    .end local v1    # "got":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :cond_0
    :goto_0
    return v4

    .line 385
    .restart local v1    # "got":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "stored":[B
    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 387
    .local v2, "hash":[B
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 388
    .local v4, "matched":Z
    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 392
    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v6    # "stored":[B
    :catch_0
    move-exception v0

    .line 393
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    move v4, v7

    .line 397
    goto :goto_0

    .line 394
    :catch_1
    move-exception v3

    .line 395
    .local v3, "ioe":Ljava/io/IOException;
    const-string v8, "LockSettingsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 278
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 287
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public havePassword(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 432
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 434
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 438
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 443
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 444
    const-string v2, "locksettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 445
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 447
    sget-boolean v2, Lcom/android/server/LockSettingsService;->USE_DBCACHE:Z

    if-eqz v2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockSettingCache:Lcom/android/server/LockSettingsService$DbCache;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsService$DbCache;->removeUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 453
    return-void

    .line 451
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 257
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    return-void

    .line 257
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 369
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 370
    return-void
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 358
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 360
    .local v0, "hash":[B
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 361
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 264
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 172
    return-void
.end method
