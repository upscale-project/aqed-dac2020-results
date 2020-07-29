<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="14">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>dataflow_stalls_kernel</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>gmemo</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>gmemi</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>output_ddr0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output_ddr0</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>input_ddr0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input_ddr0</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>data_count</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>data_count</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>22</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>data_count_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>data_count</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>65</item>
					<item>66</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>input_ddr0_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>input_ddr0</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>68</item>
					<item>69</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>output_ddr0_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>output_ddr0</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>70</item>
					<item>71</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>output_ddr0_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>73</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>data_count_c10</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>74</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>data_count_c9</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>14</id>
						<name>data_count_c8</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>76</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>data_count_c7</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>77</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>data_count_c</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>data_stage0_V</name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>106</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>106</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_stage0.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>79</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>23</id>
						<name>data_stage1_V</name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>107</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>107</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_stage1.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>80</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>26</id>
						<name>data_stage2_V</name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>108</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>108</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_stage2.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>81</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>29</id>
						<name>data_stage3_V</name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>109</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>109</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_stage3.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>82</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>32</id>
						<name>data_stage4_V</name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>110</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>110</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_stage4.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>83</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>35</id>
						<name>data_stage5_V</name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>111</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>111</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>data_stage5.V</originalName>
						<rtlName></rtlName>
						<coreName>FIFO</coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>84</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>48</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>90</item>
					<item>91</item>
					<item>92</item>
					<item>93</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>53</id>
						<name></name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>122</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>122</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>95</item>
					<item>96</item>
					<item>97</item>
					<item>98</item>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>674</item>
					<item>675</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>56</id>
						<name></name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>123</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>123</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>103</item>
					<item>104</item>
					<item>105</item>
					<item>106</item>
					<item>107</item>
					<item>672</item>
					<item>676</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name></name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>124</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>124</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>109</item>
					<item>110</item>
					<item>111</item>
					<item>112</item>
					<item>673</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name></name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>125</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>125</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>114</item>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>670</item>
					<item>671</item>
					<item>677</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name></name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>126</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>126</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>121</item>
					<item>122</item>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>669</item>
					<item>678</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>62</id>
						<name></name>
						<fileName>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</fileName>
						<fileDirectory>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</fileDirectory>
						<lineNumber>127</lineNumber>
						<contextFuncName>dataflow_stalls_kernel</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/tmp/deadlock/2017.1/adm-pcie-7v3/_xocc_compile_dataflow_stalls_kernel_dataflow_stalls-hw.dir/impl/kernels/dataflow_stalls_kernel</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/rsgs/pool0/esingh/aqed4saranyu/results/dataflow/dataflow-stalls_ab/src/dataflow_stalls_kernel.cpp</first>
											<second>dataflow_stalls_kernel</second>
										</first>
										<second>127</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_28">
				<Value>
					<Obj>
						<type>2</type>
						<id>72</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_29">
				<Value>
					<Obj>
						<type>2</type>
						<id>85</id>
						<name>load5</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:load5&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_30">
				<Value>
					<Obj>
						<type>2</type>
						<id>94</id>
						<name>scatter</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:scatter&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_31">
				<Value>
					<Obj>
						<type>2</type>
						<id>102</id>
						<name>compute1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:compute1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_32">
				<Value>
					<Obj>
						<type>2</type>
						<id>108</id>
						<name>compute2</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:compute2&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_33">
				<Value>
					<Obj>
						<type>2</type>
						<id>113</id>
						<name>gather</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:gather&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_34">
				<Value>
					<Obj>
						<type>2</type>
						<id>120</id>
						<name>store</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:store&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_35">
				<Obj>
					<type>3</type>
					<id>63</id>
					<name>dataflow_stalls_kernel</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>22</count>
					<item_version>0</item_version>
					<item>6</item>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>12</item>
					<item>13</item>
					<item>14</item>
					<item>15</item>
					<item>16</item>
					<item>20</item>
					<item>23</item>
					<item>26</item>
					<item>29</item>
					<item>32</item>
					<item>35</item>
					<item>48</item>
					<item>53</item>
					<item>56</item>
					<item>57</item>
					<item>60</item>
					<item>61</item>
					<item>62</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>60</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_36">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>14</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>15</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>20</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>23</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>26</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>29</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>32</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>72</source_obj>
				<sink_obj>35</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>48</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>94</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>98</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>102</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>108</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>113</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>120</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>669</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>670</id>
				<edge_type>4</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>671</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>672</id>
				<edge_type>4</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>673</id>
				<edge_type>4</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>57</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>674</id>
				<edge_type>4</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>675</id>
				<edge_type>4</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>53</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>676</id>
				<edge_type>4</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>56</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>677</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>60</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>678</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_96">
			<mId>1</mId>
			<mTag>dataflow_stalls_kernel</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>-1</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_97">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_98">
						<type>0</type>
						<name>load5_U0</name>
						<ssdmobj_id>48</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>7</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_99">
								<port class_id="29" tracking_level="1" version="0" object_id="_100">
									<name>to_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_101">
									<type>0</type>
									<name>load5_U0</name>
									<ssdmobj_id>48</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_102">
								<port class_id_reference="29" object_id="_103">
									<name>from</name>
									<dir>1</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_101"></inst>
							</item>
							<item class_id_reference="28" object_id="_104">
								<port class_id_reference="29" object_id="_105">
									<name>from_offset</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_101"></inst>
							</item>
							<item class_id_reference="28" object_id="_106">
								<port class_id_reference="29" object_id="_107">
									<name>data_count</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_101"></inst>
							</item>
							<item class_id_reference="28" object_id="_108">
								<port class_id_reference="29" object_id="_109">
									<name>data_count_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_101"></inst>
							</item>
							<item class_id_reference="28" object_id="_110">
								<port class_id_reference="29" object_id="_111">
									<name>output_ddr0</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_101"></inst>
							</item>
							<item class_id_reference="28" object_id="_112">
								<port class_id_reference="29" object_id="_113">
									<name>output_ddr0_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_101"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_114">
						<type>0</type>
						<name>scatter_U0</name>
						<ssdmobj_id>53</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_115">
								<port class_id_reference="29" object_id="_116">
									<name>to0_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_117">
									<type>0</type>
									<name>scatter_U0</name>
									<ssdmobj_id>53</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_118">
								<port class_id_reference="29" object_id="_119">
									<name>to1_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_117"></inst>
							</item>
							<item class_id_reference="28" object_id="_120">
								<port class_id_reference="29" object_id="_121">
									<name>from_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_117"></inst>
							</item>
							<item class_id_reference="28" object_id="_122">
								<port class_id_reference="29" object_id="_123">
									<name>data_count</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_117"></inst>
							</item>
							<item class_id_reference="28" object_id="_124">
								<port class_id_reference="29" object_id="_125">
									<name>data_count_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_117"></inst>
							</item>
							<item class_id_reference="28" object_id="_126">
								<port class_id_reference="29" object_id="_127">
									<name>data_count_out1</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_117"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_128">
						<type>0</type>
						<name>compute1_U0</name>
						<ssdmobj_id>56</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_129">
								<port class_id_reference="29" object_id="_130">
									<name>to_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_131">
									<type>0</type>
									<name>compute1_U0</name>
									<ssdmobj_id>56</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_132">
								<port class_id_reference="29" object_id="_133">
									<name>from_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_131"></inst>
							</item>
							<item class_id_reference="28" object_id="_134">
								<port class_id_reference="29" object_id="_135">
									<name>data_count</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_131"></inst>
							</item>
							<item class_id_reference="28" object_id="_136">
								<port class_id_reference="29" object_id="_137">
									<name>data_count_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_131"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_138">
						<type>0</type>
						<name>compute2_U0</name>
						<ssdmobj_id>57</ssdmobj_id>
						<pins>
							<count>3</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_139">
								<port class_id_reference="29" object_id="_140">
									<name>to_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_141">
									<type>0</type>
									<name>compute2_U0</name>
									<ssdmobj_id>57</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_142">
								<port class_id_reference="29" object_id="_143">
									<name>from_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_141"></inst>
							</item>
							<item class_id_reference="28" object_id="_144">
								<port class_id_reference="29" object_id="_145">
									<name>data_count</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_141"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_146">
						<type>0</type>
						<name>gather_U0</name>
						<ssdmobj_id>60</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_147">
								<port class_id_reference="29" object_id="_148">
									<name>to_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_149">
									<type>0</type>
									<name>gather_U0</name>
									<ssdmobj_id>60</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_150">
								<port class_id_reference="29" object_id="_151">
									<name>from0_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_149"></inst>
							</item>
							<item class_id_reference="28" object_id="_152">
								<port class_id_reference="29" object_id="_153">
									<name>from1_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_149"></inst>
							</item>
							<item class_id_reference="28" object_id="_154">
								<port class_id_reference="29" object_id="_155">
									<name>data_count</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_149"></inst>
							</item>
							<item class_id_reference="28" object_id="_156">
								<port class_id_reference="29" object_id="_157">
									<name>data_count_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_149"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_158">
						<type>0</type>
						<name>store_U0</name>
						<ssdmobj_id>61</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_159">
								<port class_id_reference="29" object_id="_160">
									<name>to</name>
									<dir>1</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_161">
									<type>0</type>
									<name>store_U0</name>
									<ssdmobj_id>61</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_162">
								<port class_id_reference="29" object_id="_163">
									<name>to_offset</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_161"></inst>
							</item>
							<item class_id_reference="28" object_id="_164">
								<port class_id_reference="29" object_id="_165">
									<name>from_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_161"></inst>
							</item>
							<item class_id_reference="28" object_id="_166">
								<port class_id_reference="29" object_id="_167">
									<name>data_count</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_161"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>12</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_168">
						<type>1</type>
						<name>data_stage0_V</name>
						<ssdmobj_id>20</ssdmobj_id>
						<ctype>0</ctype>
						<depth>10</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_169">
							<port class_id_reference="29" object_id="_170">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_101"></inst>
						</source>
						<sink class_id_reference="28" object_id="_171">
							<port class_id_reference="29" object_id="_172">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_117"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_173">
						<type>1</type>
						<name>data_count_c</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_174">
							<port class_id_reference="29" object_id="_175">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_101"></inst>
						</source>
						<sink class_id_reference="28" object_id="_176">
							<port class_id_reference="29" object_id="_177">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_117"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_178">
						<type>1</type>
						<name>output_ddr0_c</name>
						<ssdmobj_id>9</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_179">
							<port class_id_reference="29" object_id="_180">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_101"></inst>
						</source>
						<sink class_id_reference="28" object_id="_181">
							<port class_id_reference="29" object_id="_182">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_161"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_183">
						<type>1</type>
						<name>data_stage1_V</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_184">
							<port class_id_reference="29" object_id="_185">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_117"></inst>
						</source>
						<sink class_id_reference="28" object_id="_186">
							<port class_id_reference="29" object_id="_187">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_131"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_188">
						<type>1</type>
						<name>data_stage2_V</name>
						<ssdmobj_id>26</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_189">
							<port class_id_reference="29" object_id="_190">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_117"></inst>
						</source>
						<sink class_id_reference="28" object_id="_191">
							<port class_id_reference="29" object_id="_192">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_141"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_193">
						<type>1</type>
						<name>data_count_c7</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_194">
							<port class_id_reference="29" object_id="_195">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_117"></inst>
						</source>
						<sink class_id_reference="28" object_id="_196">
							<port class_id_reference="29" object_id="_197">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_131"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_198">
						<type>1</type>
						<name>data_count_c8</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_199">
							<port class_id_reference="29" object_id="_200">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_117"></inst>
						</source>
						<sink class_id_reference="28" object_id="_201">
							<port class_id_reference="29" object_id="_202">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_141"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_203">
						<type>1</type>
						<name>data_stage3_V</name>
						<ssdmobj_id>29</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_204">
							<port class_id_reference="29" object_id="_205">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_131"></inst>
						</source>
						<sink class_id_reference="28" object_id="_206">
							<port class_id_reference="29" object_id="_207">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_208">
						<type>1</type>
						<name>data_count_c9</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_209">
							<port class_id_reference="29" object_id="_210">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_131"></inst>
						</source>
						<sink class_id_reference="28" object_id="_211">
							<port class_id_reference="29" object_id="_212">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_213">
						<type>1</type>
						<name>data_stage4_V</name>
						<ssdmobj_id>32</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_214">
							<port class_id_reference="29" object_id="_215">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_141"></inst>
						</source>
						<sink class_id_reference="28" object_id="_216">
							<port class_id_reference="29" object_id="_217">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_218">
						<type>1</type>
						<name>data_stage5_V</name>
						<ssdmobj_id>35</ssdmobj_id>
						<ctype>0</ctype>
						<depth>10</depth>
						<bitwidth>64</bitwidth>
						<source class_id_reference="28" object_id="_219">
							<port class_id_reference="29" object_id="_220">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</source>
						<sink class_id_reference="28" object_id="_221">
							<port class_id_reference="29" object_id="_222">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_161"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_223">
						<type>1</type>
						<name>data_count_c10</name>
						<ssdmobj_id>12</ssdmobj_id>
						<ctype>0</ctype>
						<depth>1</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_224">
							<port class_id_reference="29" object_id="_225">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_149"></inst>
						</source>
						<sink class_id_reference="28" object_id="_226">
							<port class_id_reference="29" object_id="_227">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_161"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_228">
		<states class_id="35" tracking_level="0" version="0">
			<count>10</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_229">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>16</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_230">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_231">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_232">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_233">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_234">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_235">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_236">
						<id>14</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_237">
						<id>15</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_238">
						<id>16</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_239">
						<id>20</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_240">
						<id>23</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_241">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_242">
						<id>29</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_243">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_244">
						<id>35</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_245">
						<id>48</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_246">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_247">
						<id>48</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_248">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_249">
						<id>53</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_250">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_251">
						<id>53</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_252">
				<id>5</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_253">
						<id>56</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_254">
						<id>57</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_255">
				<id>6</id>
				<operations>
					<count>2</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_256">
						<id>56</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_257">
						<id>57</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_258">
				<id>7</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_259">
						<id>60</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_260">
				<id>8</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_261">
						<id>60</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_262">
				<id>9</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_263">
						<id>61</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_264">
				<id>10</id>
				<operations>
					<count>37</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_265">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_266">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_267">
						<id>17</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_268">
						<id>18</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_269">
						<id>19</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_270">
						<id>21</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_271">
						<id>22</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_272">
						<id>24</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_273">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_274">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_275">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_276">
						<id>30</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_277">
						<id>31</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_278">
						<id>33</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_279">
						<id>34</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_280">
						<id>36</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_281">
						<id>37</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_282">
						<id>38</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_283">
						<id>39</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_284">
						<id>40</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_285">
						<id>41</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_286">
						<id>42</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_287">
						<id>43</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_288">
						<id>44</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_289">
						<id>45</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_290">
						<id>46</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_291">
						<id>47</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_292">
						<id>49</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_293">
						<id>50</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_294">
						<id>51</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_295">
						<id>52</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_296">
						<id>54</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_297">
						<id>55</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_298">
						<id>58</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_299">
						<id>59</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_300">
						<id>61</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_301">
						<id>62</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_302">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>0</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_303">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_304">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>2</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_305">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>3</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_306">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>4</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_307">
				<inState>6</inState>
				<outState>7</outState>
				<condition>
					<id>5</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_308">
				<inState>7</inState>
				<outState>8</outState>
				<condition>
					<id>6</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_309">
				<inState>8</inState>
				<outState>9</outState>
				<condition>
					<id>7</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_310">
				<inState>9</inState>
				<outState>10</outState>
				<condition>
					<id>8</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>22</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>6</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>14</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>23</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>26</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>29</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>32</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>35</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>53</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>8</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>62</first>
			<second>
				<first>9</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>63</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>9</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_311">
			<region_name>dataflow_stalls_kernel</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</basic_blocks>
			<nodes>
				<count>57</count>
				<item_version>0</item_version>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>21</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>264</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>268</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>272</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>276</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>280</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>284</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>288</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>292</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>296</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>26</item>
			</second>
		</item>
		<item>
			<first>300</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>304</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>308</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>312</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>318</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>324</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>330</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>57</item>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>337</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>61</item>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>346</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>48</item>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>361</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>60</item>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>370</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>53</item>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>380</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>data_count_c10_fu_268</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>data_count_c7_fu_280</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>data_count_c8_fu_276</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>data_count_c9_fu_272</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>data_count_c_fu_284</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>data_stage0_V_fu_288</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>data_stage1_V_fu_292</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>data_stage2_V_fu_296</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>26</item>
			</second>
		</item>
		<item>
			<first>data_stage3_V_fu_300</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>data_stage4_V_fu_304</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>data_stage5_V_fu_308</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>output_ddr0_c_fu_264</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>6</count>
		<item_version>0</item_version>
		<item>
			<first>grp_compute1_fu_380</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>grp_compute2_fu_330</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>57</item>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>grp_gather_fu_361</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>60</item>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>grp_load5_fu_346</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>48</item>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>grp_scatter_fu_370</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>53</item>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>grp_store_fu_337</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>61</item>
				<item>61</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>data_count_read_read_fu_312</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>input_ddr0_read_read_fu_318</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>output_ddr0_read_read_fu_324</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>15</count>
		<item_version>0</item_version>
		<item>
			<first>388</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>393</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>398</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>403</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>409</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>415</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>421</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>427</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>433</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>439</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>445</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>451</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>26</item>
			</second>
		</item>
		<item>
			<first>457</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>463</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>469</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>35</item>
			</second>
		</item>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>15</count>
		<item_version>0</item_version>
		<item>
			<first>data_count_c10_reg_409</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>data_count_c7_reg_427</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>15</item>
			</second>
		</item>
		<item>
			<first>data_count_c8_reg_421</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</second>
		</item>
		<item>
			<first>data_count_c9_reg_415</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>13</item>
			</second>
		</item>
		<item>
			<first>data_count_c_reg_433</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>16</item>
			</second>
		</item>
		<item>
			<first>data_count_read_reg_388</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>data_stage0_V_reg_439</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>20</item>
			</second>
		</item>
		<item>
			<first>data_stage1_V_reg_445</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</second>
		</item>
		<item>
			<first>data_stage2_V_reg_451</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>26</item>
			</second>
		</item>
		<item>
			<first>data_stage3_V_reg_457</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</second>
		</item>
		<item>
			<first>data_stage4_V_reg_463</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>data_stage5_V_reg_469</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>input_ddr0_read_reg_393</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>7</item>
			</second>
		</item>
		<item>
			<first>output_ddr0_c_reg_403</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>output_ddr0_read_reg_398</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="59" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="60" tracking_level="0" version="0">
			<first>data_count</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>6</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>gmemi</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>48</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>gmemo</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>call</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>61</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>input_ddr0</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>7</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>output_ddr0</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>8</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="61" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>12</count>
		<item_version>0</item_version>
		<item class_id="62" tracking_level="0" version="0">
			<first>9</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>12</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>13</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>14</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>15</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>16</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>20</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>23</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>26</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>29</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>32</first>
			<second>FIFO</second>
		</item>
		<item>
			<first>35</first>
			<second>FIFO</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

