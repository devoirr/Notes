; ModuleID = 'obj/Debug/android/marshal_methods.x86.ll'
source_filename = "obj/Debug/android/marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [124 x i32] [
	i32 39109920, ; 0: Newtonsoft.Json.dll => 0x254c520 => 7
	i32 57967248, ; 1: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 45
	i32 160529393, ; 2: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 13
	i32 166922606, ; 3: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 24
	i32 201930040, ; 4: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 14
	i32 232815796, ; 5: System.Web.Services => 0xde07cb4 => 59
	i32 293914992, ; 6: Xamarin.Android.Support.Transition => 0x1184c970 => 40
	i32 321597661, ; 7: System.Numerics => 0x132b30dd => 49
	i32 388313361, ; 8: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 20
	i32 389971796, ; 9: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 26
	i32 393699800, ; 10: Firebase => 0x177761d8 => 2
	i32 465846621, ; 11: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 12: System.dll => 0x1bff388e => 9
	i32 514659665, ; 13: Xamarin.Android.Support.Compat => 0x1ead1551 => 24
	i32 524864063, ; 14: Xamarin.Android.Support.Print => 0x1f48ca3f => 37
	i32 526420162, ; 15: System.Transactions.dll => 0x1f6088c2 => 50
	i32 539750087, ; 16: Xamarin.Android.Support.Design => 0x202beec7 => 30
	i32 571524804, ; 17: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 43
	i32 605376203, ; 18: System.IO.Compression.FileSystem => 0x24154ecb => 54
	i32 610194910, ; 19: System.Reactive.dll => 0x245ed5de => 10
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 60
	i32 692692150, ; 21: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 21
	i32 775507847, ; 22: System.IO.Compression => 0x2e394f87 => 53
	i32 801787702, ; 23: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 34
	i32 809851609, ; 24: System.Drawing.Common.dll => 0x30455ad9 => 52
	i32 916714535, ; 25: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 37
	i32 955402788, ; 26: Newtonsoft.Json => 0x38f24a24 => 7
	i32 987342438, ; 27: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 17
	i32 1098167829, ; 28: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 19
	i32 1098259244, ; 29: System => 0x41761b2c => 9
	i32 1292763917, ; 30: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 28
	i32 1297413738, ; 31: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 16
	i32 1359785034, ; 32: Xamarin.Android.Support.Design.dll => 0x510cac4a => 30
	i32 1365406463, ; 33: System.ServiceModel.Internals.dll => 0x516272ff => 58
	i32 1445445088, ; 34: Xamarin.Android.Support.Fragment => 0x5627bde0 => 33
	i32 1462112819, ; 35: System.IO.Compression.dll => 0x57261233 => 53
	i32 1574652163, ; 36: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 27
	i32 1587447679, ; 37: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 13
	i32 1592978981, ; 38: System.Runtime.Serialization.dll => 0x5ef2ee25 => 57
	i32 1639515021, ; 39: System.Net.Http.dll => 0x61b9038d => 56
	i32 1657153582, ; 40: System.Runtime => 0x62c6282e => 11
	i32 1662014763, ; 41: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 44
	i32 1776026572, ; 42: System.Core.dll => 0x69dc03cc => 8
	i32 1866717392, ; 43: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 34
	i32 1877418711, ; 44: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 43
	i32 1904755420, ; 45: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 1
	i32 1916660109, ; 46: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 19
	i32 1928098107, ; 47: Notes.dll => 0x72ec713b => 0
	i32 2037417872, ; 48: Xamarin.Android.Support.ViewPager => 0x79708790 => 46
	i32 2044222327, ; 49: Xamarin.Android.Support.Loader => 0x79d85b77 => 35
	i32 2079903147, ; 50: System.Runtime.dll => 0x7bf8cdab => 11
	i32 2139458754, ; 51: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 32
	i32 2166116741, ; 52: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 27
	i32 2196165013, ; 53: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 45
	i32 2201231467, ; 54: System.Net.Http => 0x8334206b => 56
	i32 2330457430, ; 55: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 26
	i32 2330986192, ; 56: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 38
	i32 2373288475, ; 57: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 33
	i32 2440966767, ; 58: Xamarin.Android.Support.Loader.dll => 0x917e326f => 35
	i32 2471841756, ; 59: netstandard.dll => 0x93554fdc => 47
	i32 2475788418, ; 60: Java.Interop.dll => 0x93918882 => 3
	i32 2487632829, ; 61: Xamarin.Android.Support.DocumentFile => 0x944643bd => 31
	i32 2501346920, ; 62: System.Data.DataSetExtensions => 0x95178668 => 51
	i32 2698266930, ; 63: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 17
	i32 2709105058, ; 64: Notes => 0xa179a9a2 => 0
	i32 2751899777, ; 65: Xamarin.Android.Support.Collections => 0xa406a881 => 23
	i32 2788639665, ; 66: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 36
	i32 2788775637, ; 67: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 39
	i32 2819470561, ; 68: System.Xml.dll => 0xa80db4e1 => 12
	i32 2876493027, ; 69: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 39
	i32 2893257763, ; 70: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 14
	i32 2903344695, ; 71: System.ComponentModel.Composition => 0xad0d8637 => 55
	i32 2905242038, ; 72: mscorlib.dll => 0xad2a79b6 => 6
	i32 2921692953, ; 73: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 29
	i32 2922925221, ; 74: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 44
	i32 3056250942, ; 75: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 22
	i32 3068715062, ; 76: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 15
	i32 3111772706, ; 77: System.Runtime.Serialization => 0xb979e222 => 57
	i32 3204380047, ; 78: System.Data.dll => 0xbefef58f => 48
	i32 3204912593, ; 79: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 22
	i32 3233339011, ; 80: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 16
	i32 3247949154, ; 81: Mono.Security => 0xc197c562 => 61
	i32 3296380511, ; 82: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 23
	i32 3317144872, ; 83: System.Data => 0xc5b79d28 => 48
	i32 3321585405, ; 84: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 31
	i32 3322403133, ; 85: Firebase.dll => 0xc607d93d => 2
	i32 3352662376, ; 86: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 25
	i32 3357663996, ; 87: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 28
	i32 3366347497, ; 88: Java.Interop => 0xc8a662e9 => 3
	i32 3404865022, ; 89: System.ServiceModel.Internals => 0xcaf21dfe => 58
	i32 3429136800, ; 90: System.Xml => 0xcc6479a0 => 12
	i32 3430777524, ; 91: netstandard => 0xcc7d82b4 => 47
	i32 3439690031, ; 92: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 21
	i32 3476120550, ; 93: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 94: System.Transactions => 0xcfd0c798 => 50
	i32 3498942916, ; 95: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 42
	i32 3509114376, ; 96: System.Xml.Linq => 0xd128d608 => 60
	i32 3547625832, ; 97: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 38
	i32 3567349600, ; 98: System.ComponentModel.Composition.dll => 0xd4a16f60 => 55
	i32 3596207933, ; 99: LiteDB.dll => 0xd659c73d => 4
	i32 3629588173, ; 100: LiteDB => 0xd8571ecd => 4
	i32 3664423555, ; 101: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 46
	i32 3672681054, ; 102: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 103: System.Web.Services.dll => 0xdb2009fe => 59
	i32 3678221644, ; 104: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 41
	i32 3681174138, ; 105: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 15
	i32 3684933406, ; 106: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 1
	i32 3689375977, ; 107: System.Drawing.Common => 0xdbe768e9 => 52
	i32 3714038699, ; 108: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 36
	i32 3718463572, ; 109: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 20
	i32 3731644420, ; 110: System.Reactive => 0xde6c6004 => 10
	i32 3776062606, ; 111: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 32
	i32 3829621856, ; 112: System.Numerics.dll => 0xe4436460 => 49
	i32 3832731800, ; 113: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 25
	i32 3862817207, ; 114: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 18
	i32 3874897629, ; 115: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 18
	i32 3883175360, ; 116: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 41
	i32 3920810846, ; 117: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 54
	i32 3945713374, ; 118: System.Data.DataSetExtensions.dll => 0xeb2ecede => 51
	i32 4063435586, ; 119: Xamarin.Android.Support.CustomView => 0xf2331b42 => 29
	i32 4105002889, ; 120: Mono.Security.dll => 0xf4ad5f89 => 61
	i32 4151237749, ; 121: System.Core => 0xf76edc75 => 8
	i32 4216993138, ; 122: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 40
	i32 4219003402 ; 123: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 42
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [124 x i32] [
	i32 7, i32 45, i32 13, i32 24, i32 14, i32 59, i32 40, i32 49, ; 0..7
	i32 20, i32 26, i32 2, i32 6, i32 9, i32 24, i32 37, i32 50, ; 8..15
	i32 30, i32 43, i32 54, i32 10, i32 60, i32 21, i32 53, i32 34, ; 16..23
	i32 52, i32 37, i32 7, i32 17, i32 19, i32 9, i32 28, i32 16, ; 24..31
	i32 30, i32 58, i32 33, i32 53, i32 27, i32 13, i32 57, i32 56, ; 32..39
	i32 11, i32 44, i32 8, i32 34, i32 43, i32 1, i32 19, i32 0, ; 40..47
	i32 46, i32 35, i32 11, i32 32, i32 27, i32 45, i32 56, i32 26, ; 48..55
	i32 38, i32 33, i32 35, i32 47, i32 3, i32 31, i32 51, i32 17, ; 56..63
	i32 0, i32 23, i32 36, i32 39, i32 12, i32 39, i32 14, i32 55, ; 64..71
	i32 6, i32 29, i32 44, i32 22, i32 15, i32 57, i32 48, i32 22, ; 72..79
	i32 16, i32 61, i32 23, i32 48, i32 31, i32 2, i32 25, i32 28, ; 80..87
	i32 3, i32 58, i32 12, i32 47, i32 21, i32 5, i32 50, i32 42, ; 88..95
	i32 60, i32 38, i32 55, i32 4, i32 4, i32 46, i32 5, i32 59, ; 96..103
	i32 41, i32 15, i32 1, i32 52, i32 36, i32 20, i32 10, i32 32, ; 104..111
	i32 49, i32 25, i32 18, i32 18, i32 41, i32 54, i32 51, i32 29, ; 112..119
	i32 61, i32 8, i32 40, i32 42 ; 120..123
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
